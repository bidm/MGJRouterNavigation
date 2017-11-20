//
//  NavigateManager.m
//  RouterTest
//
//  Created by bidm on 2017/11/20.
//  Copyright © 2017年 bidm. All rights reserved.
//

#import "NavigateManager.h"
#import "MGJRouter.h"

#import "BaseViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController4.h"
#import "ViewController5.h"

@implementation NavigateManager

- (instancetype)init {
    if (self = [super init]) {
        [self registVCs];
    }
    return self;
}

- (void)registVCs {
    NSArray *vcArray = @[@"ViewController1",@"ViewController2",@"ViewController3",@"ViewController4",@"ViewController5"];
    for (NSInteger i = 0; i < vcArray.count; i++) {
        Class objClass = NSClassFromString(vcArray[i]);
        [MGJRouter registerURLPattern:vcArray[i] toHandler:^(NSDictionary *routerParameters) {
            BaseViewController *vc = [[objClass alloc] init];
            vc.defaultParamaters = routerParameters;
            UINavigationController *nav = (UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController;
            [nav pushViewController:vc animated:YES];
        }];
    }
}

@end
