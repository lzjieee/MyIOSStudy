//
//  HomePageViewController.m
//  组合使用导航模式
//
//  Created by J_jie on 16/9/28.
//  Copyright © 2016年 lzj. All rights reserved.
//

#import "HomePageViewController.h"

@interface HomePageViewController ()

@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *view = [[UIView alloc] init];
    view.frame = [UIScreen mainScreen].bounds;
    view.backgroundColor = [UIColor grayColor];
    [self.view addSubview:view];
    UILabel *lbl = [[UILabel alloc] init];
    lbl.text = @"home page";
    lbl.frame = CGRectMake(0, 0, 100, 20);
    lbl.center = CGPointMake(self.view.center.x, self.view.center.y);
    [self.view addSubview:lbl];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    NSLog(@"---->HomePageViewController dealloc...");
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
