//
//  AKMQueue.m
//  Task3
//
//  Created by Anton Kostenko on 27.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMQueue.h"

@interface AKMQueue ()

@property   (nonatomic, retain)   NSMutableArray  *carsQueue;

@end

@implementation AKMQueue

@dynamic    count;

#pragma -
#pragma mark Public

- (id)getCar {
    id car = [self.carsQueue firstObject];
    [self.carsQueue removeObject:car];
    
    return car;
}

- (void)putCar:(id)car {
    [self.carsQueue addObject:car];
}

- (NSUInteger)getCount {
    return self.carsQueue.count;
}

#pragma -
#pragma mark Private

- (instancetype)init {
    self = [super init];
    if (self) {
        self.carsQueue = [[NSMutableArray alloc] init];
        return self;
    }
    
    return nil;
}

- (void)dealloc {
    self.carsQueue = nil;
    [super dealloc];
}


@end
