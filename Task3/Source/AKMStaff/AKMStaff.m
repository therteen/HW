//
//  AKMStaff.m
//  Task3
//
//  Created by Anton Kostenko on 25.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMStaff.h"

@implementation AKMStaff

#pragma mark -
#pragma mark Initialization and deallocation

- (instancetype)initWithCash {
    self = [super init];
    if (self) {
        self.cash = [[[NSDecimalNumber alloc] initWithInt:50] autorelease];
    }
    
    return self;
}

- (instancetype)initWithBoss:(AKMStaff *)boss {
    self = [[AKMStaff alloc] initWithCash];
    if (self) {
        self.boss = boss;
    }
    return self;
}

#pragma mark -
#pragma mark Public

- (void)payCash:(AKMStaff *) contragent : (NSDecimalNumber *)amount {
    if ([self.cash decimalNumberBySubtracting:amount]) {                //not work
        self.cash = [self.cash decimalNumberBySubtracting:amount];
        contragent.cash = [contragent.cash decimalNumberByAdding:amount];
    }
}

- (void)doJob {
    
}

@end
