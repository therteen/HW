//
//  AKMBoss.m
//  Task3
//
//  Created by Anton Kostenko on 02.08.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMBoss.h"

@implementation AKMBoss

- (void)doJobWithObject:(AKMStaff *)object {
    self.state = AKMbusy;
    [object payCash:self amount:(object.cash)];
    NSLog(@"babla - %u",self.cash);
    self.state = AKMfree;
    object.state = AKMfree;
}

@end
