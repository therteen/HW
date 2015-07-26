//
//  AKMQueue.m
//  Task3
//
//  Created by Anton Kostenko on 27.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMQueue.h"

@implementation AKMQueue

- (id)getCar {
    id car = [self.carsQueue firstObject];
    [self.carsQueue removeObject:car];
    
    return car;
}

- (void)putCar:(id)car {
    [self.carsQueue addObject:car];
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.carsQueue = [[NSMutableArray alloc] init];
        return self;
    }
    
    return nil;
}

@end
