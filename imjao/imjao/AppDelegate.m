//
//  AppDelegate.m
//  imjao
//
//  Created by zhang zhang on 16/7/4.
//  Copyright © 2016年 zhang zhang. All rights reserved.
//
//姐就是今生今世
#import "AppDelegate.h"
#import "tabBarViewController.h"
#import "LaunchViewController.h"
@interface AppDelegate ()<haha>
@property (nonatomic,strong)LaunchViewController * lvc;
@end
//激动的跑开发票疯狂的跑快点
@implementation AppDelegate
//建闯吃了个大屎
//建闯吃了个大屎
//建闯吃了个大屎//建闯吃了个大屎//建闯吃了个大屎
//建闯吃了个大屎//建闯吃了个大屎


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [[UIApplication sharedApplication] setStatusBarHidden:NO];
    // Override point for customization after application launch.上啊啊啊啊
//    [NSThread sleepForTimeInterval:3.0f];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.lvc = [[LaunchViewController alloc] init];
    self.lvc.delegate = self;
    self.window.rootViewController = self.lvc;
    [self.window makeKeyAndVisible];
    return YES;
    
    
}
//哈哈哈哈哈哈哈哈
-(void)heheda{
    
        tabBarViewController *vc = [[tabBarViewController alloc] init];
        self.window.rootViewController = vc;

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

@end
