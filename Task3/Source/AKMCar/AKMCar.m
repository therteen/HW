//
//  AKMCar.m
//  Task3
//
//  Created by Anton Kostenko on 26.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMCar.h"

const uint8_t carStartingCash = 50;

@implementation AKMCar

- (instancetype)initWithCash {
    self = [super init];
    if (self) {
        self.cash = carStartingCash;
    }
    
    return self;
}

@end
