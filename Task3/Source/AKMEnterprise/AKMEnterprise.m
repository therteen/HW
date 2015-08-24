//
//  AKMEnterprise.m
//  Task3
//
//  Created by Anton Kostenko on 04.08.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMEnterprise.h"

@interface AKMEnterprise ()

@property (nonatomic, retain) AKMQueue          *queue;
@property (nonatomic, retain) NSMutableArray    *mutableWashers;
@property (nonatomic, retain) NSMutableArray    *mutableAccountants;
@property (nonatomic, retain) AKMBoss           *director;

@end

@implementation AKMEnterprise

#pragma mark -
#pragma mark Init and dealloc

- (instancetype)init {
    self = [super init];
    self.queue = [AKMQueue new];
    self.mutableWashers = [NSMutableArray array];
    self.mutableAccountants = [NSMutableArray array];
    
    return self;
}

- (void)dealloc {
    self.queue = nil;
    self.mutableWashers = nil;
    self.mutableAccountants = nil;
    self.director = nil;
    [super dealloc];
}

#pragma mark -
#pragma mark Public methods

- (void)hireStaff {
    self.director = [[[AKMBoss alloc] init] autorelease];
    [self.mutableAccountants addObject:[[[AKMStaff alloc] initWithVacancy:AKMaccountant] autorelease]];
    [self.mutableAccountants makeObjectsPerformSelector:@selector(addObserver:) withObject:self.director];
    
    for (int index = 0; index < kWashersCount; index++) {
        [self.mutableWashers  addObject:[[[AKMStaff alloc] initWithVacancy:AKMwasher] autorelease]];
    }
    [self.mutableWashers makeObjectsPerformSelector:@selector(addObserver:) withObject:self];
  
    NSUInteger accountantsCount = self.mutableAccountants.count;
    
    for (int index = 0; index < kWashersCount ; index++) {
        [self.mutableWashers[index] addObserver:self.mutableAccountants[(accountantsCount + index) % accountantsCount]];
    }
}



- (void)cleanCar:(AKMCar *)car {
    @synchronized(self){
        for (id washer in self.mutableWashers) {
            if (AKMfree == ((AKMWasher *)washer).state) {
                [washer doJobWithObject:car];
                return;
            }
        }
        
        [self.queue putCar:car];
    }
}

#pragma mark -
#pragma mark Private methods

- (void)getFreeWasher:(AKMWasher *)washer {
    if (self.queue.count > 0) {
        [washer doJobWithObject:[self.queue getCar]];
    }
}

@end
