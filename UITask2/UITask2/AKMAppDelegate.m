//
//  AppDelegate.m
//  UITask2
//
//  Created by Anton Kostenko on 21.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMAppDelegate.h"

#import "AKMListViewController.h"
#import "AKMItems.h"

#import "UIWindow+AKMExtensions.h"
#import "UIViewController+AKMExtensions.h"



@interface AKMAppDelegate ()
@property (nonatomic, strong)   AKMItems    *items;

@end

@implementation AKMAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UIWindow *window = [UIWindow window];
    self.window = window;
    
    [self.items loadData];
    AKMItems *items = self.items;
    if (items == nil) {
        items = [AKMItems new];
        self.items = items;
    }
    
    AKMListViewController *rootViewController = [AKMListViewController controller];
    rootViewController.items = items;
      
    window.rootViewController = rootViewController;
    
    [window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    [self.items saveData];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
    [self.items saveData];
}

@end
