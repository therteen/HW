//
//  AKMStaff.m
//  Task3
//
//  Created by Anton Kostenko on 25.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMStaff.h"
#import "AKMWasher.h"
#import "AKMAccountant.h"
#import "AKMBoss.h"
#import "AKMEnterprisePrivate.h"

@interface AKMStaff ()
@property   (nonatomic, retain) NSHashTable *mutableObservers;
@property                       NSLock      *AKMStafflock;
@end


@implementation AKMStaff

@dynamic observers;

+ (Class)classByVacancy:(AKMEnterprisePositions)vacancy {
    if (AKMwasher == vacancy) {
        return AKMWasher.class;
    }
    if (AKMaccountant == vacancy) {
        return AKMAccountant.class;
    }
    if (AKMdirector == vacancy) {
        return AKMBoss.class;
    }
    
    return nil;
}

#pragma mark -
#pragma mark Initialization and deallocation

- (instancetype)initWithVacancy:(AKMEnterprisePositions)vacancy {
    Class EmployeeClass = [[self class] classByVacancy:vacancy];
    self = [[EmployeeClass alloc] init];
    
    if (self) {
        self.mutableObservers = [NSHashTable weakObjectsHashTable];
        self.AKMStafflock = [NSLock new];
        return self;
    }
    
    return nil;
}


#pragma mark -
#pragma mark Public

- (void)payCash:(AKMStaff *)contragent amount:(uint8_t)value {
    if (!(self.cash < value && [contragent respondsToSelector:@selector(payCash:amount:)]))
    {
        self.cash -= value;
        contragent.cash += value;
    }
}

- (void)doJobWithObject:(id)object {
    [self startingJob];
    [self performSelectorInBackground:@selector(doRealJobWithObject:) withObject:object];
//    [self finishingJob];
}

- (NSArray *)observers {
    return self.mutableObservers.allObjects;
}


- (void)addObserver:(id)observer {
    if (observer) {
        [self.mutableObservers addObject:observer];
    }
}

- (void)removeObserver:(id)observer {
    if (observer) {
        [self.mutableObservers removeObject:observer];
    }
}

- (void)notifyObserversWithSelector:(SEL)selector withObject:(id)object{
    for (id observer in self.observers) {
        if ([observer respondsToSelector:selector]) {
            [observer performSelectorOnMainThread:selector withObject:object waitUntilDone:YES];
        }
    }
}

#pragma mark-
#pragma mark Private methods

- (void)setState:(AKMEmployeeState)state {
    if (state != _state) {
        _state = state;
        if (state == AKMfinished) {
            [self notifyObserversWithSelector:@selector(doJobWithObject:) withObject:self];
        } else     if (state == AKMfree) {
            [self notifyObserversWithSelector:@selector(getFreeWasher:) withObject:self];
        }
    }
}

- (void)doRealJobWithObject:(id)object {
    
}

- (void)startingJob{
    self.state = AKMbusy;
}

- (void)finishingJob {
    self.state = AKMfinished;
}

@end
