//
//  ViewController.m
//  RouterTest
//
//  Created by bidm on 2017/11/8.
//  Copyright © 2017年 bidm. All rights reserved.
//

#import "ViewController.h"
#import "MGJRouter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = NSStringFromClass([self class]);
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [MGJRouter openURL:@"mgj://foo/bar"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
