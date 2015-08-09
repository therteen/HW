//
//  AKMStaff.h
//  Task3
//
//  Created by Anton Kostenko on 25.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum  {
    director,
    accountant,
    washer
} AKMEnterprisePositions;

typedef enum  {
    freeState,
    busyState,
    finishedState
} AKMEmployeeState;

@interface AKMStaff : NSObject

@property (nonatomic, assign)   UInt32              experience;
@property (nonatomic, assign)   UInt32              salary;
@property (nonatomic, assign)   uint8_t             cash;
@property (nonatomic, assign)   AKMEmployeeState    state;
@property (nonatomic, readonly) NSArray *observers;

- (instancetype)initWithVacancy:(AKMEnterprisePositions)vacancy NS_DESIGNATED_INITIALIZER;

- (void)payCash:(AKMStaff *)contragent amount:(uint8_t)value;
- (void)doJobWithObject:(id)object;

- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;

- (void)notifyObserversWithSelector:(SEL)selector withObject:(id)object;

@end
