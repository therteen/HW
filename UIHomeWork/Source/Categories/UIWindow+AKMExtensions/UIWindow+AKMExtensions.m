//
//  UIWindow+AKMExtensions.m
//  UIHomeWork
//
//  Created by Anton Kostenko on 20.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "UINib+AKMExtensions.h"

@implementation UIWindow (AKMExtensions)

+ (instancetype)window {
    return [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
}

@end
