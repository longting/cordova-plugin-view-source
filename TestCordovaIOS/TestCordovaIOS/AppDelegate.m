//
//  AppDelegate.m
//  TestCordovaIOS
//
//  Created by huishidai on 2019/5/14.
//  Copyright © 2019 kxys. All rights reserved.
//

#import "AppDelegate.h"
#import "Plugins/TestViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

// 项目入口函数
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // UIWindow在一个APP只有一个，表示屏幕窗口
    // UIScreen:屏幕硬件类，mainScreen：主屏幕的设备信息,bounds:屏幕的宽高
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    //TestViewController* testVC = [[TestViewController alloc] init];
    
    TestViewController* testVC = [[TestViewController alloc]initWithNibName:@"TestViewController" bundle:[NSBundle mainBundle]];
     testVC.labelTitle.text = @"haha";
    
    // 根视图控制器
    self.window.rootViewController = testVC;
    //self.window.rootViewController = [[UIViewController alloc] init];
    
   //self.window.backgroundColor = [UIColor redColor];
    
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
