//
//  main.m
//  Decorater_Pattern
//
//  Created by 没懂 on 16/5/30.
//  Copyright © 2016年 com.camelet. All rights reserved.
//

#import <Foundation/Foundation.h>
//装饰者模式：不通过继承，Categroy等方式，给方法添加新的功能。听起来有点抽象，有人说，用继承和Category不挺好的么，其实，每一个东西都有其优点和缺点。继承，Category都有自己的有缺点，这两做不到的，装饰者就能做到。当然装饰者也有自己的有缺点。

/*
 业务场景：
 *      某做手机的牛逼公司，起初，一代机比较简单，就是打电话发短信两个功能。过了几年出二代机，老板：“手机要能听歌看电影，把mp3，mp4都加上”。又过了几年三代机。老板说：“要能导航，能直播，增强现实。还说这都啥年代了，把mp3，mp4的功能砍掉”。
 */

// 第一代手机
@interface Phone : NSObject
- (void)functionPhone;
@end

@implementation Phone
- (void)functionPhone
{
    NSLog(@"打电话");
    NSLog(@"发短信");
}

@end

// 装饰者：负责给方法添加功能的。注意⚠️是方法，方法，某一个特定的方法
// 本例中就是 - (void)functionPhone

@interface Detorater : Phone
@property (nonatomic, strong)Phone *detorater;
- (instancetype)initWithDetorate:(Detorater *)detorater;
@end
@implementation Detorater

- (instancetype)initWithDetorate:(Detorater *)detorater
{
    if (self = [super init]) {
        _detorater = detorater;
    }
    return self;
}
- (void)functionPhone
{
    if(self.detorater)
    {
        [self.detorater functionPhone];
        [super functionPhone];
    }
}

@end

// 第二代手机
@interface MediaPhone : Detorater

@end

@implementation MediaPhone

- (void)functionPhone
{
    
    NSLog(@"听音乐");
    /**
     *  手机扩展的功能代码。
     */
    [super functionPhone];
    [self.detorater functionPhone];
    /**
     *  手机扩展的功能代码。
     */
    NSLog(@"看电影");

}
@end

// 第三代手机
@interface  VRPhone: Detorater

@end

@implementation VRPhone

- (void)functionPhone
{
    
    NSLog(@"VR-增强现实版手机");
//    NSLog(@"还想添加什么功能都可以尽情的写，功能先后执行有逻辑顺序");
    /**
     *  手机扩展的功能代码。
     */
    [super functionPhone];
    [self.detorater functionPhone];
    /**
     *  手机扩展的功能代码。
     */
    NSLog(@"导航功能－little case");
    
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 一代机
        NSLog(@"----一代机--------");
        Phone *p1 = [Phone new];
        [p1 functionPhone];
        
        
        // 装饰者
        Detorater *detorate = [Detorater new];
        
        // 二代机:这是在一代机的基础上做的改进
        NSLog(@"----二代机--------");
        MediaPhone *p2 = [[MediaPhone alloc]initWithDetorate:detorate];
        [p2 functionPhone];
        
        
        
        // 三代机：砍掉 p3，p4.
        NSLog(@"----三代机--------");
        VRPhone *p3 = [[VRPhone alloc]initWithDetorate:detorate];
        [p3 functionPhone];
        
    }
    return 0;
/*
 Decorater_Pattern[29327:204847] ----一代机--------
 Decorater_Pattern[29327:204847] 打电话
 Decorater_Pattern[29327:204847] 发短信
 Decorater_Pattern[29327:204847] ----二代机--------
 Decorater_Pattern[29327:204847] 听音乐
 Decorater_Pattern[29327:204847] 打电话
 Decorater_Pattern[29327:204847] 发短信
 Decorater_Pattern[29327:204847] 看电影
 Decorater_Pattern[29327:204847] ----三代机--------
 Decorater_Pattern[29327:204847] VR-增强现实版手机
 Decorater_Pattern[29327:204847] 打电话
 Decorater_Pattern[29327:204847] 发短信
 Decorater_Pattern[29327:204847] 导航功能－little case
*/
}

/**
 *  总结下：
    装饰者优点：就是在扩展functionPhone方法。并没有对phone的functionPhone做任何的改变。能动态的扩展撤销functionPhone方法（）。若是用继承或者Category都无发动态的添加功能，只能重写。这样就大大增加了程序设计的灵活性。
    缺点：灵活性提高的同时带来了复杂性的提高，若大量使用。会极大的提高复杂性。在python可能会好很多。python中可以有语法糖，代码量相对也会减小。会python的同学，可看python版的。
    欢迎大家指导。拍砖！
 */
