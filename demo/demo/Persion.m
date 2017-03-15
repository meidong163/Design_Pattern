//
//  Persion.m
//  demo
//
//  Created by 没懂 on 17/3/14.
//  Copyright © 2017年 com.infomacro. All rights reserved.
//

#import "Persion.h"
#import "Listener.h"
#import "Event.h"
@interface Persion()
@property (nonatomic, strong)Listener *listener;
@end

@implementation Persion
-(void)persion
{

}

- (void)eat
{
    if (self.listener) {
        Event *e =[Event new];
        [e eventWithPersion:self];
        [self.listener eat:e];
    }
    NSLog(@"执行eat");
}
- (void)run
{
    if (self.listener) {
        Event *e =[Event new];
        [e eventWithPersion:self];
        [self.listener run:e];
    }
    NSLog(@"执行run");
}
- (void)registerListener:(Listener *)listener
{
    if (listener) {
        self.listener = listener;
    }
}
@end
