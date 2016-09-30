//
//  ViewController.m
//  ModelViewSample
//
//  Created by J_jie on 16/9/27.
//  Copyright © 2016年 lzj. All rights reserved.
//

/**
 storyboard的segue实现模态视图
 1.在默认的viewController中拖一个Navigation Bar到界面，或者将当前控制器嵌入到导航控制器中(此例采用这种)
   具体做法：选中viewController，点击Editor->Embed->Navigation Controller
 2.重复步骤1，再创建另外一个viewController
 3.界面的跳转实现。界面1的注册按钮，按住Control，拖线到控制器2，选者present modally。
    （present modally是模态类型的segue；show一般用于树型；show detail一般用于分栏）
 */

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 注册通知事件(注册页面定义的RegistCompletionNotification)，当收到通知，回调方法registerCompletion
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(registerCompletion:) name:@"RegistCompletionNotification" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)registerCompletion:(NSNotification *)noty
{
    NSDictionary *dict = [noty userInfo];
    NSString *username = [dict objectForKey:@"username"];
    NSLog(@"---->收到注册界面的消息:用户名是%@", username);
}

@end
