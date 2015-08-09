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

- (instancetype)initWithQueue {
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
    [super dealloc];
}

#pragma mark -
#pragma mark Public methods

- (void)hireStaff {
    self.director = [[[AKMBoss alloc] init] autorelease];
    [self.mutableAccountants addObject:[[[AKMStaff alloc] initWithVacancy:accountant] autorelease]];
    [self.mutableAccountants makeObjectsPerformSelector:@selector(addObserver:) withObject:self.director];
    
    int washersCount = arc4random_uniform(8) + 2;
    for (int index = 0; index < washersCount; index++) {
        [self.mutableWashers  addObject:[[[AKMStaff alloc] initWithVacancy:washer] autorelease]];
    }
  
    NSUInteger accountantsCount = self.mutableAccountants.count;
    for (int index = 0; index < washersCount ; index++) {
        [self.mutableWashers[index] addObserver:self.mutableAccountants[(accountantsCount + index) % accountantsCount]];
    }
}



- (void)cleanCar:(AKMCar *)car {
//    [self.queue putCar:car];
    [self.mutableWashers[arc4random_uniform((uint32_t) self.mutableWashers.count)] doJobWithObject:car];
}

@end
