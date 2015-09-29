//
//  NSString+AKMExtensions.m
//  UITask2
//
//  Created by Anton Kostenko on 21.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "NSString+AKMExtensions.h"

@implementation NSString (NSString_AKMExtensions)

#pragma mark -
#pragma mark Class Methods

NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

+ (NSString *)randomStringWithLength:(int)len {
    NSMutableString *randomString = [NSMutableString stringWithCapacity:len];
    for (int i = 0; i < len; i++) {
        [randomString appendFormat: @"%C", [letters characterAtIndex:arc4random_uniform(((uint32_t)[letters length]))]];
    }
    
    return randomString;
}


@end
