//
//  AppDelegate.m
//  Bee
//
//  Created by steam on 2017/1/10.
//  Copyright © 2017年 steam. All rights reserved.
//

#import "AppDelegate.h"
#import <AFNetworking.h>
#import "BaseViewController.h"
#import "MainViewController.h"
#import "GuideViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:KScreenBounds];
    [self.window makeKeyAndVisible];
    
    
    [self setRootViewController];
    [self addNotification];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {

}


- (void)applicationDidEnterBackground:(UIApplication *)application {

}


- (void)applicationWillEnterForeground:(UIApplication *)application {

}


- (void)applicationDidBecomeActive:(UIApplication *)application {

}


- (void)applicationWillTerminate:(UIApplication *)application {

}

#pragma  mark -- 注册通知

-(void)addNotification{
    // 第一次启动接收引导页结束通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showMainTabBar) name:GuideViewDidFinish object:nil];
}

#pragma mark -- 创建启动APP后的第一页

/**
 判断是否为第一次启动，第一次启动开启导航页，否则进入主页
 */
-(void)setRootViewController{
    
    if (![[NSUserDefaults standardUserDefaults] boolForKey:@"isFirstStart"]) {
        // 第一次启动,加载导航页控制器
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"isFirstStart"];
        self.window.rootViewController = [GuideViewController new];
    }else{
        //加载主页控制器
        self.window.rootViewController = [[MainViewController alloc] init];
    }
}

/**
 引导页结束事件，显示主界面
 */
-(void)showMainTabBar{
    self.window.rootViewController = [[MainViewController alloc] init];
}


@end
