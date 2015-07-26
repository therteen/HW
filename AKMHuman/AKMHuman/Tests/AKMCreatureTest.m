//
//  AKMCreatureTest.m
//  AKMHuman
//
//  Created by Anton Kostenko on 20.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMCreatureTest.h"
#import "AKMHuman.h"
#import "AKMFemale.h"
#import "AKMMale.h"

@implementation AKMCreatureTest


+ (void)testCreature {
    AKMFemale *mother = [[[AKMFemale alloc] initWithGender:AKMCreatureFemale] autorelease];
    id child1 = [mother performGenderSpecificOperation];
    [mother addChild:child1];
    id child2 = [mother performGenderSpecificOperation];
    [mother addChild:child2];
    id child3 = [mother performGenderSpecificOperation];
    [mother addChild:child3];
    
    for (long index = 0; [mother.children count] > index; index++) {
        if (AKMFemale.class == [[mother.children objectAtIndex:index] class]) {
            id temp = [[mother.children objectAtIndex:index] performGenderSpecificOperation];
            [[mother.children objectAtIndex:index] addChild:temp];
        } else [[mother.children objectAtIndex:index] performGenderSpecificOperation];
    }
    
    [mother sayHello];
}

@end


