//
//  Event.h
//  demo
//
//  Created by 没懂 on 17/3/14.
//  Copyright © 2017年 com.infomacro. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Persion;
@interface Event : NSObject
- (void)eventWithPersion:(Persion *)persion;
- (Persion *)getPersion;
@end
