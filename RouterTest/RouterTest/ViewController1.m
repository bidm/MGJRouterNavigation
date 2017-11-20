//
//  ViewController1.m
//  RouterTest
//
//  Created by bidm on 2017/11/8.
//  Copyright © 2017年 bidm. All rights reserved.
//

#import "ViewController1.h"
#import "MGJRouter.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = NSStringFromClass([self class]);
    NSLog(@"vc1 = %@",self.defaultParamaters);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [MGJRouter openURL:@"ViewController3" withUserInfo:@{@"ViewController1":@"ViewController1"} completion:^(id result) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
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
