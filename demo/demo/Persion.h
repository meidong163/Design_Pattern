//
//  Persion.h
//  demo
//
//  Created by 没懂 on 17/3/14.
//  Copyright © 2017年 com.infomacro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListenerProtocol.h"

//事件源
@class Event,Listener;

@interface Persion : NSObject<ListenerProtocol>
@property (nonatomic, strong)NSString *name;
- (void)persion;
- (void)persion:(Event *)event;
- (void)registerListener:(Listener *)listener;
- (void)eat;
- (void)run;
@end

