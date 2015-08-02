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


- (instancetype)initWithBoss:(AKMStaff *)boss {
    self = [self init];
    if (self) {
        self.boss = boss;
    }
    
    return self;
}

#pragma mark -
#pragma mark Public

- (void)payCash:(AKMStaff *) contragent amount:(uint8_t)value {
    if (!(self.cash < value)) {
        self.cash -= value;
        contragent.cash += value;
    }
}

- (void)doJob {
    
}

@end
