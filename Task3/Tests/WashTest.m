//
//  WashTest.m
//  Task3
//
//  Created by Anton Kostenko on 26.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "WashTest.h"

@implementation WashTest

+ (void)cashFlowTest {
    AKMStaff *first = [[[AKMStaff alloc] initWithCash] autorelease];
    AKMStaff *second = [[[AKMStaff alloc] initWithCash] autorelease];
    [first payCash:second : [[[NSDecimalNumber alloc] initWithInt:10] autorelease]];
    NSLog(@"%@ %@", first.cash , second.cash);
}

@end
