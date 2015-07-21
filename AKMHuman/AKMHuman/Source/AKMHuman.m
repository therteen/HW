//
//  AKMHuman.m
//  AKMHuman
//
//  Created by Anton Kostenko on 17.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMHuman.h"

@interface AKMCreature ()

@property (nonatomic, retain)   NSMutableArray    *mutableChildren;

@end

@implementation AKMCreature

@dynamic children;

#pragma mark -
#pragma mark Initializations and Deallocations

- (void)dealloc {
    self.name = nil;
    self.mutableChildren = nil;
    
    [super dealloc];
}

- (instancetype)initWithGender:(AKMCreatureGender)aGender {
    self = [super init];
    if (self) {
        _gender = aGender;
    }
    
    return self;
}

- (instancetype)initWithName:(NSString *)aName gender:(AKMCreatureGender)aGender {
    self = [self initWithGender:aGender];
    if (self) {
        _name = [aName copy];
    }
    
    return self;
}

#pragma mark -
#pragma mark Accessors

- (NSArray *)children {
    return [[self.mutableChildren copy] autorelease];
}

#pragma mark -
#pragma mark Public methods

- (void)sayHello {
    NSLog(@"%@ says Hello", self.name);
    
    long count = self.children.count;
    for (int index =0; index < count; index++) {
        [self.children[index] sayHello];
    }
}

- (void)addChild:(id)child {
    if (nil == self.mutableChildren) {
        [self.mutableChildren init];
    }
    if (![self.mutableChildren containsObject:child]) {

        [self.mutableChildren addObject:child];
    }
}

- (void)removeChild:(AKMCreature *)child {
    if ([self.mutableChildren containsObject:child]) {
        [self.mutableChildren removeObject:child];
    }
}

- (void)makeWar {
    NSLog(@"%@ says KillemAll", self.class);
}

- (AKMCreature *)giveBirth {
    return [[[AKMCreature alloc] initWithGender:(arc4random_uniform(2))] autorelease];
}



@end
