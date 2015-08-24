//
//  AKMAccountant.m
//  Task3
//
//  Created by Anton Kostenko on 02.08.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMAccountant.h"

const   uint8_t netProfit = 20;

@implementation AKMAccountant

- (void)doRealJobWithObject:(AKMStaff *)object {
    @autoreleasepool {
        //        @synchronized(self) {
        UInt income = object.cash;
        [self.AKMStafflock lock];
        [object payCash:self amount:income];
        self.cash = self.cash - income +(income * netProfit / 100);
        sleep(0.1 * arc4random_uniform(kSleepTimer));
        
        object.state = AKMfree;
        NSLog(@"recieved money from %@", object);
        [super doRealJobWithObject:object];
        [self.AKMStafflock unlock];
    }
}
//}
@end
