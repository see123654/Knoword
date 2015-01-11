//
//  ViewController.m
//  Knoword
//
//  Created by 苏志宏 on 15/1/11.
//  Copyright (c) 2015年 Knoword. All rights reserved.
//

#import "KWRootController.h"
#import "KWMainViewController.h"


@interface KWRootController ()

@end

@implementation KWRootController


+(id)share
{
    static KWRootController * rootCtr = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        rootCtr = [[KWRootController alloc] init];
    });
    return rootCtr;
}


- (UIViewController *)mainViewCtr
{
    KWMainViewController * mainView = [[KWMainViewController alloc] init];
    
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:mainView];
    [nav.navigationBar setHidden:YES];
    return nav;
}


@end
