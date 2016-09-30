//
//  RegisterViewController.m
//  ModelViewSample
//
//  Created by J_jie on 16/9/28.
//  Copyright © 2016年 lzj. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@property (weak, nonatomic) IBOutlet UITextField *txtField;

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
- (IBAction)saveBtnClicked:(id)sender
{
    // 关闭模态视图
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"---->save...关闭模态视图");
        
        // 用字典保存注册界面输入框的数据
        NSDictionary *dict = [NSDictionary dictionaryWithObject:self.txtField.text forKey:@"username"];
        // 用消息将数据传给登陆界面
        [[NSNotificationCenter defaultCenter] postNotificationName:@"RegistCompletionNotification" object:nil userInfo:dict];
    }];
    
}
- (IBAction)cancelBtnClicked:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"---->cancel...关闭模态视图");
    }];
}

@end
