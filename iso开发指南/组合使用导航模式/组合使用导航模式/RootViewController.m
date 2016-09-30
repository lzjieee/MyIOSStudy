//
//  RootViewController.m
//  组合使用导航模式
//
//  Created by J_jie on 16/9/28.
//  Copyright © 2016年 lzj. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *view = [[UIView alloc] init];
    view.frame = [UIScreen mainScreen].bounds;
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
    UILabel *lbl = [[UILabel alloc] init];
    lbl.text = @"root";
    [self.view addSubview:lbl];
    
    // 定义navigationController的属性
    [self.navigationController.navigationBar setTranslucent:NO];//设置navigationbar的半透明
    [self.navigationController.navigationBar setBarTintColor:[UIColor purpleColor]];//设置navigationbar的颜色
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(btnCanelBtnClicked)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(btnDoneBtnClicked)];
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];//设置navigationbar上左右按钮字体颜色
    self.title = @"Root-Nav";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)btnCanelBtnClicked
{
    SecondViewController *secViewController = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secViewController animated:YES];
}

- (void)btnDoneBtnClicked
{
    ThirdViewController *thirViewController = [[ThirdViewController alloc] init];
    [self.navigationController pushViewController:thirViewController animated:YES];
}

- (void)dealloc
{
    NSLog(@"---->RootViewController dealloc...");
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
