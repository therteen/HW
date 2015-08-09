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
    [object payCash:self amount:(object.cash)];
    object.state = freeState;
    self.cash = self.cash*netProfit/100;
}
@end
