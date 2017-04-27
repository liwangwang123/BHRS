//
//  AppDelegate.m
//  BHRS
//
//  Created by 王力 on 2017/4/25.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"
#import "MineViewController.h"
#import "BuffetController.h"

//#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    HomeViewController *homeVC = [[HomeViewController alloc] init];
    MineViewController *mineVC = [[MineViewController alloc] init];
    BuffetController *selfVC = [[BuffetController alloc] init];
    
    
    
    UINavigationController *homeNC = [[UINavigationController alloc] initWithRootViewController:homeVC];
    UINavigationController *mineNC = [[UINavigationController alloc] initWithRootViewController:mineVC];
    UINavigationController *selfNC = [[UINavigationController alloc] initWithRootViewController:selfVC];
    
    UIImage *homeImage = [[UIImage imageNamed:@"首页.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *homeSelectedImage = [[UIImage imageNamed:@"首页_click.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *mineImage = [[UIImage imageNamed:@"自助服务.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *mineSelectedImage = [[UIImage imageNamed:@"自助服务_click.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *selffImage = [[UIImage imageNamed:@"我的.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *selfSelectedImage = [[UIImage imageNamed:@"我的_click.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UITabBarItem *homeItem = [[UITabBarItem alloc] initWithTitle:@"首页" image:homeImage selectedImage:homeSelectedImage];
    UITabBarItem *mineItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:mineImage selectedImage:mineSelectedImage];
    UITabBarItem *selfItem = [[UITabBarItem alloc] initWithTitle:@"发现" image:selffImage selectedImage:selfSelectedImage];
    
    [homeItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor orangeColor]} forState:UIControlStateSelected];
    [homeItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]} forState:UIControlStateNormal];
    [mineItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor orangeColor]} forState:UIControlStateSelected];
    [mineItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]} forState:UIControlStateNormal];
    [selfItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor orangeColor]} forState:UIControlStateSelected];
    [selfItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]} forState:UIControlStateNormal];
    
    homeNC.tabBarItem = homeItem;
    mineNC.tabBarItem = mineItem;
    selfNC.tabBarItem = selfItem;
    
    NSArray *NCsArray = @[homeNC, mineNC, selfNC];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
//    tabBarController.tabBar.barTintColor = COLOR_RGB(56, 59, 62);//tab背景颜色
    tabBarController.tabBar.tintColor = [UIColor whiteColor];//选择字体颜色
    tabBarController.viewControllers = NCsArray;
    self.window.rootViewController = tabBarController;
    
    [self.window makeKeyAndVisible];

    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
