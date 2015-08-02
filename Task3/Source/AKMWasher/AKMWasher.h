//
//  AKMWasher.h
//  Task3
//
//  Created by Anton Kostenko on 26.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMStaff.h"
#import "AKMCar.h"
#import "AKMQueue.h"

FOUNDATION_EXPORT uint8_t washPrice;

@interface AKMWasher : AKMStaff

@property (nonatomic, retain) AKMCar    *car;
@property (nonatomic, retain) AKMQueue  *queue;

@end
