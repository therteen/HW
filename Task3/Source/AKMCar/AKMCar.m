//
//  AKMCar.m
//  Task3
//
//  Created by Anton Kostenko on 26.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMCar.h"

@implementation AKMCar

- (instancetype)initWithCash {
    self = [super init];
    if (self) {
        self.cash = kCarStartingCash;
    }
    
    return self;
}

- (void)payCash:(AKMCar *)contragent amount:(uint8_t)value {
    if (!(self.cash < value && [contragent respondsToSelector:@selector(payCash:amount:)]))
    {
        self.cash -= value;
        contragent.cash += value;
    }
}

@end


