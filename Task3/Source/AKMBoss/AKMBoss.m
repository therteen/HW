//
//  AKMBoss.m
//  Task3
//
//  Created by Anton Kostenko on 02.08.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMBoss.h"

@implementation AKMBoss

- (void)doRealJobWithObject:(AKMStaff *)object {
    [object payCash:self amount:(object.cash)];
    object.state = freeState;
    NSLog(@"babla - %hhu",self.cash);
    self.state = freeState;
}

@end
