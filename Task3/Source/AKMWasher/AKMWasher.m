//
//  AKMWasher.m
//  Task3
//
//  Created by Anton Kostenko on 26.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMWasher.h"

uint8_t washPrice = 10;

@implementation AKMWasher

- (void)doRealJobWithObject:(id)object {
    //берет машину из очереди, кладет в бокс, моет, отбирает деньги и передает бухгалтеру.
    self.car = object;
    [self.car setClean:YES];
    [self.car payCash:self amount:washPrice];
    [self setCar:nil];
}

@end
