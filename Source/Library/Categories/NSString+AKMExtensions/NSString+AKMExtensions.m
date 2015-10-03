//
//  NSString+AKMExtensions.m
//  UITask2
//
//  Created by Anton Kostenko on 21.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "NSString+AKMExtensions.h"

static const NSString *AKMletters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

@implementation NSString (AKMExtensions)

#pragma mark -
#pragma mark Class Methods

+ (NSString *)randomStringWithLength:(int)len {
    NSMutableString *randomString = [NSMutableString stringWithCapacity:len];
    for (int i = 0; i < len; i++) {
        [randomString appendFormat: @"%C", [AKMletters characterAtIndex:arc4random_uniform(((uint32_t)[AKMletters length]))]];
    }
    
    return randomString;
}

@end
