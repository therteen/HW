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
    self = [self initWithCash];
    if (self) {
        self.boss = boss;
    }
    
    return self;
}

#pragma mark -
#pragma mark Public

- (void)payCash:(AKMStaff *) contragent amount:(NSDecimalNumber *)value {
    if (NSOrderedDescending == [self.cash compare:value]) {
        self.cash = [self.cash decimalNumberBySubtracting:value];
        contragent.cash = [contragent.cash decimalNumberByAdding:value];
    }
}

- (void)doJob {
    
}

@end
