//
//  AppDelegate.m
//  UITask2
//
//  Created by Anton Kostenko on 21.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMAppDelegate.h"

#import "AKMListViewController.h"

#import "UIWindow+AKMExtensions.h"
#import "UIViewController+AKMExtensions.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UIWindow *window = [UIWindow window];
    self.window = window;
    
    window.rootViewController = [AKMListViewController controller];
    [window makeKeyAndVisible];
    
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

@end
