//
//  AKMWasher.m
//  Task3
//
//  Created by Anton Kostenko on 26.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMWasher.h"
#import "AKMEnterprisePrivate.h"

@implementation AKMWasher

- (void)doRealJobWithObject:(id)object {
    self.car = object;
    [self.car setClean:YES];
    [self.car payCash:self amount:kWashPrice];
    [self setCar:nil];
    sleep(0.1 * arc4random_uniform(kSleepTimer));
    [super doRealJobWithObject:object];
}


@end
