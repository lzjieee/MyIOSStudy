//
//  ThirdViewController.m
//  组合使用导航模式
//
//  Created by J_jie on 16/9/28.
//  Copyright © 2016年 lzj. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView *view = [[UIView alloc] init];
    view.frame = [UIScreen mainScreen].bounds;
    view.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view];
    UILabel *lbl = [[UILabel alloc] init];
    lbl.text = @"third";
    CGPoint pos;
    pos.x = self.view.frame.size.width * .5f;
    pos.y = self.view.frame.size.height * .5f;
    lbl.center = pos;
    [self.view addSubview:lbl];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc
{
    NSLog(@"---->ThirdViewController dealloc...");
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
