//
//  ViewController.m
//  demo
//
//  Created by 没懂 on 17/3/14.
//  Copyright © 2017年 com.infomacro. All rights reserved.
//

#import "ViewController.h"
#import "Persion.h"
#import "Listener.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Persion *p = [Persion new];
    p.name = @"meidong";
    [p registerListener:[Listener new]];
    [p eat];
    [p run];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
