//
//  AKMRoom.m
//  Task3
//
//  Created by Anton Kostenko on 26.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMRoom.h"

@implementation AKMRoom

- (instancetype)initWithCapacity:(UInt32)capacity :(BOOL)containWashBox {
    self = [super init];
    if (self) {
        self.capacity = capacity;
        self.isWashBox = containWashBox;
        self.cellmates = [NSMutableArray array];
        
        return self;
    }
    return nil;
}

- (void)addWorker:(AKMStaff *) worker {
    if (self.capacity < [self.cellmates count]) {
        [self.cellmates addObject:worker];
    }
}

- (void)removeWorker:(AKMStaff *)worker {
    [self.cellmates removeObject:worker];
}

- (void)addCar:(AKMCar *)car {
    if (self.isWashBox) {
        self.car = car;
    }
}

- (void)removeCar:(AKMCar *)car {
    self.car = nil;
}

@end
