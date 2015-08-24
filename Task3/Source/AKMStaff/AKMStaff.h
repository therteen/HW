//
//  AKMStaff.h
//  Task3
//
//  Created by Anton Kostenko on 25.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AKMPayCash.h"
#import "AKMConst.h"

typedef enum  {
    AKMdirector,
    AKMaccountant,
    AKMwasher
} AKMEnterprisePositions;

typedef enum  {
    AKMfree,
    AKMbusy,
    AKMfinished
} AKMEmployeeState;

@interface AKMStaff : NSObject <AKMPayCash>

@property (nonatomic, assign)   UInt32              experience;
@property (nonatomic, assign)   UInt32              salary;
@property (nonatomic, assign)   uint8_t             cash;
@property (nonatomic, assign)   AKMEmployeeState    state;
@property (nonatomic, readonly) NSArray             *observers;
@property (nonatomic,readonly)  NSLock              *AKMStafflock;

- (instancetype)initWithVacancy:(AKMEnterprisePositions)vacancy NS_DESIGNATED_INITIALIZER;

- (void)doJobWithObject:(id)object;
- (void)doRealJobWithObject:(id)object;
- (void)finishingJob;

- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;

- (void)notifyObserversWithSelector:(SEL)selector withObject:(id)object;

@end
