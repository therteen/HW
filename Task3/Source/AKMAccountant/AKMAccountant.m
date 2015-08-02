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

- (void)doJob {
    [self payCash:self.boss amount:(self.cash*netProfit/100)];
    self.cash = 0;
}
@end
