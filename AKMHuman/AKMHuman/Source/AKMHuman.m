//
//  AKMHuman.m
//  AKMHuman
//
//  Created by Anton Kostenko on 17.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMHuman.h"
#import "AKMFemale.h"
#import "AKMMale.h"

@interface AKMCreature ()

@property (nonatomic, retain)   NSMutableArray    *mutableChildren;

@end

@implementation AKMCreature

@dynamic children;

#pragma mark -
#pragma mark Class methods

+ (Class)classByGender: (AKMCreatureGender)aGender {
    return aGender == AKMCreatureFemale ? AKMFemale.class: AKMMale.class;
}

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
       Class creatureClass = [self.class classByGender:aGender];
        [self release];
        
        self = [[creatureClass alloc] init];
        
        self.mutableChildren = [NSMutableArray array];
    }
    
    return self;
}

- (instancetype)initWithName:(NSString *)aName gender:(AKMCreatureGender)aGender {
    self = [self initWithGender:aGender];
    if (self) {
        self.name = [aName copy];
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
    
    long count = [self.children count];
    for (int index =0; index < count; index++) {
        [[self.mutableChildren objectAtIndex:index] sayHello];
    }
}

- (void)addChild:(id)child {
    if (![self.mutableChildren containsObject:child]) {
        [self.mutableChildren addObject:child];
    }
}

- (void)removeChild:(AKMCreature *)child {
    if ([self.mutableChildren containsObject:child]) {
        [self.mutableChildren removeObject:child];
    }
}

- (id)performGenderSpecificOperation {
    return nil;
}

//- (void)makeWar {
//    NSLog(@"%@ says KillemAll", self.class);
//}





@end
