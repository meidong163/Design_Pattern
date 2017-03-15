//
//  Event.m
//  demo
//
//  Created by 没懂 on 17/3/14.
//  Copyright © 2017年 com.infomacro. All rights reserved.
//

#import "Event.h"
#import "Persion.h"

@interface Event()
{
    Persion *_persion;
}
@end

@implementation Event
- (void)eventWithPersion:(Persion *)persion
{
    if (persion == nil) {
//        NSException *e = [NSException exceptionWithName:@"meidong" reason:@"persion is nill, result in listener can't get persion" userInfo:nil];
//        @throw e;
        NSAssert(persion, @"persion is null");
        return;
    }
    [self setPersion:persion];
}

- (void)setPersion:(Persion *)persion
{
    if (_persion != persion) {
        _persion = persion;
    }
}

- (Persion *)getPersion
{
    return _persion;
}


@end
