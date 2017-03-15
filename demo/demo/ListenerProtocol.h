//
//  ListenerProtocol.h
//  demo
//
//  Created by 没懂 on 17/3/14.
//  Copyright © 2017年 com.infomacro. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Event;
@protocol ListenerProtocol <NSObject>
- (void)run:(Event *)event;
- (void)eat:(Event *)event;
@end
