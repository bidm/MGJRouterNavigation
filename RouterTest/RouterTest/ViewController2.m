//
//  ViewController2.m
//  RouterTest
//
//  Created by bidm on 2017/11/8.
//  Copyright © 2017年 bidm. All rights reserved.
//

#import "ViewController2.h"
#import "MGJRouter.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = NSStringFromClass([self class]);
    NSLog(@"vc2 = %@",self.defaultParamaters);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [MGJRouter openURL:@"ViewController4" withUserInfo:@{@"ViewController2":@"ViewController2"} completion:^(id result) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
