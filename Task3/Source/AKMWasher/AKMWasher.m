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

- (void)doJob {
    //берет машину из очереди, кладет в бокс, моет, отбирает деньги и передает бухгалтеру.
    self.car = [self.queue getCar];
    [self.car payCash:self amount:washPrice];
    [self.car setClean:YES];
    [self setCar:nil];
    [self payCash:self.boss amount:[self cash]];
        
}

@end
