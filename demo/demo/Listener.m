//
//  Listener.m
//  demo
//
//  Created by 没懂 on 17/3/14.
//  Copyright © 2017年 com.infomacro. All rights reserved.
//

#import "Listener.h"
#import "Event.h"
#import "Persion.h"
// 监听器需要自实现
@implementation Listener

- (void)run:(Event *)event
{
    NSLog(@"监听到 run之行了 获取事件对象 %@",[event getPersion].name);

}
- (void)eat:(Event *)event
{
    NSLog(@"监听到 eat之行了 获取事件对象 %@",[event getPersion].name);
}
@end
