//
//  AKMRoom.h
//  Task3
//
//  Created by Anton Kostenko on 26.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AKMCar.h"
#import "AKMWasher.h"


@interface AKMRoom : NSObject

@property (nonatomic, assign) UInt32            capacity;
@property (nonatomic, assign) BOOL              isWashBox;
@property (nonatomic, retain) NSMutableArray    *cellmates;
@property (nonatomic, retain) AKMCar            *car;

- (instancetype)initWithCapacity:(UInt32)capacity :(BOOL)containWashBox;

- (void)addWorker:(AKMStaff *) worker;
- (void)removeWorker:(AKMStaff *)worker;

- (void)addCar:(AKMCar *)car;
- (void)removeCar:(AKMCar *)car;

@end
