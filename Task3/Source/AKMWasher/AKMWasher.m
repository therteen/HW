//
//  AKMWasher.m
//  Task3
//
//  Created by Anton Kostenko on 26.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMWasher.h"

@implementation AKMWasher

- (void)doRealJobWithObject:(AKMCar *)object {
    @autoreleasepool {
        [object retain];
        object.clean = YES;
        [object payCash:self amount:kWashPrice];
        [object release];
        sleep(0.1 * arc4random_uniform(kSleepTimer));
        [super doRealJobWithObject:object];
    }
}

@end
