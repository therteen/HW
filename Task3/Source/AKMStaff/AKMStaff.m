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

@interface AKMStaff ()
@property   (nonatomic, retain) NSHashTable  *mutableObservers;
@end


@implementation AKMStaff

@dynamic observers;

+ (Class)classByVacancy:(AKMEnterprisePositions)vacancy {
    if (washer == vacancy) {
        return AKMWasher.class;
    }
    if (accountant == vacancy) {
        return AKMAccountant.class;
    }
    if (director == vacancy) {
        return AKMBoss.class;
    }
    
    return nil;
}

#pragma mark -
#pragma mark Initialization and deallocation

- (instancetype)initWithVacancy:(AKMEnterprisePositions)vacancy {
    self = [super init];
    Class EmployeeClass = [[self class] classByVacancy:vacancy];
    [self release];
    self = [[EmployeeClass alloc] init];
    
    if (self) {
        self.mutableObservers = [NSHashTable weakObjectsHashTable];
        return self;
    }
    
    return nil;
}


#pragma mark -
#pragma mark Public

- (void)payCash:(AKMStaff *) contragent amount:(uint8_t)value {
    if (!(self.cash < value)) {
        self.cash -= value;
        contragent.cash += value;
    }
}

- (void)doJobWithObject:(id)object {
    self.state = busyState;
    [self doRealJobWithObject:object];
    self.state = finishedState;
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
    [self.observers makeObjectsPerformSelector:selector withObject:object];
}


#pragma mark Private methods
#pragma mark-

- (void)setState:(AKMEmployeeState)state {
    if (state != _state) {
        _state = state;
        if (state == finishedState) {
            [self notifyObserversWithSelector:@selector(doJobWithObject:) withObject:self];
        }
    }
}

- (void)doRealJobWithObject:(id)object {
    
}


@end
