//
//  AKMCreatureTest.m
//  AKMHuman
//
//  Created by Anton Kostenko on 20.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMCreatureTest.h"
#import "AKMHuman.h"

@implementation AKMCreatureTest


+ (void)testCreature {
    
    AKMCreature *mother = [[[AKMCreature alloc] initWithGender:AKMCreatureFemale] autorelease];
    AKMCreature *child1 = [mother giveBirth];
    [mother addChild:child1];
    AKMCreature *child2 = [mother giveBirth];
    [mother addChild:child2];
    AKMCreature *child3 = [mother giveBirth];
    [mother addChild:child3];
    
    for (long index = 0; [mother.children count] > index; index++) {
        if (AKMCreatureFemale == [[mother.children objectAtIndex:index] gender]) {
            AKMCreature *temp = [[mother.children objectAtIndex:index] giveBirth];
            [[mother.children objectAtIndex:index] addChild:temp];
        } else [[mother.children objectAtIndex:index] makeWar];
    }
    
    [mother sayHello];
}

@end
