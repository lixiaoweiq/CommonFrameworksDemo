//
//  AppDelegate.m
//  uMengDemo
//
//  Created by apple on 16/11/29.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

//友盟统计
#import "UMengManager.h"

//以下宏定义添加在发布配置文件中
//友盟appKey
#define UMENG_APPKEY @"583cf95645297d60eb0009b4"

//友盟统计渠道：未发布测试使用"Web"  发布测试使用"" channelId为nil或@""时，默认会被当作@"App Store"渠道。channelId仅为字符标识，与具体发布渠道无关
//某个设备渠道标识提交后不能更改。
#define UMENG_CHANNELID @"Web"
//#define UMENG_CHANNELID @""

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //友盟统计
    [UMengManager uMengStartWithAppkey:UMENG_APPKEY channelId:UMENG_CHANNELID];
    
    //窗口初始化
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    ViewController *controller = [[ViewController alloc] init];

    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:controller];
    self.window.rootViewController = navController;
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
