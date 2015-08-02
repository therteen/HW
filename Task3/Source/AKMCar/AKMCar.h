//
//  AKMCar.h
//  Task3
//
//  Created by Anton Kostenko on 26.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMStaff.h"

FOUNDATION_EXPORT const uint8_t carStaringCash;

@interface AKMCar : AKMStaff

@property (nonatomic, assign, getter=isClean)   BOOL    clean;

- (instancetype)initWithCash;

@end
