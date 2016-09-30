//
//  AppDelegate.m
//  组合使用导航模式
//
//  Created by J_jie on 16/9/28.
//  Copyright © 2016年 lzj. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"
#import "HomePageViewController.h"

@interface AppDelegate () <UITabBarControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 创建一个标签导航(最外层的导航控制器)
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.delegate = self;
    // 应用打开第一个控制器(普通的控制器)
    HomePageViewController *homePageController = [[HomePageViewController alloc] init];
    // 设置UITabBarController的属性
    homePageController.tabBarItem.title=@"首页";
    //homePageController.tabBarItem.image=[UIImage imageNamed:@"icon_tabbar_homepage"];
    UIImage *img = [UIImage imageNamed:@"icon_tabbar_homepage"];
    UIImage *tabImg = [self createNewImageWithColor:img multiple:0.6];
    homePageController.tabBarItem.image=tabImg;
    // 小红点效果？
    //self.tabBarItem.badgeValue=@"123";
    
    // 创建一个控制器实例
    RootViewController *rootViewController = [[RootViewController alloc] init];
    // 创建navigation导航控制器
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:rootViewController];
    navController.tabBarItem.image = [self createNewImageWithColor:[UIImage imageNamed:@"icon_tabbar_merchant_normal"] multiple:0.6];
    
    tabBarController.viewControllers = [NSArray arrayWithObjects:homePageController, navController, nil];
    self.window.rootViewController = tabBarController;
    //self.window.rootViewController = navController;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

// 缩小图片
- (UIImage *) createNewImageWithColor:(UIImage *)image multiple:(CGFloat)multiple
{
    CGFloat newMultiple = multiple;
    if (multiple == 0) {
        newMultiple = 1;
    }
    else if((fabs(multiple) > 0 && fabs(multiple) < 1) || (fabs(multiple)>1 && fabs(multiple)<2))
    {
        newMultiple = multiple;
    }
    else
    {
        newMultiple = 1;
    }
    CGFloat w = image.size.width*newMultiple;
    CGFloat h = image.size.height*newMultiple;
    CGFloat scale = [UIScreen mainScreen].scale;
    UIImage *tempImage = nil;
    CGRect imageFrame = CGRectMake(10, 15, w, h);
    UIGraphicsBeginImageContextWithOptions(image.size, NO, scale);
    [[UIBezierPath bezierPathWithRoundedRect:imageFrame cornerRadius:0] addClip];
    [image drawInRect:imageFrame];
    tempImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return tempImage;
}

@end
