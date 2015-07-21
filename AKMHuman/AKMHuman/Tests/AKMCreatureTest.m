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
    
    AKMCreature *mother = [[[AKMCreature alloc] init] autorelease];
    AKMCreature *child1 = [mother giveBirth];
    [mother addChild:child1];
    AKMCreature *child2 = [mother giveBirth];
    [mother addChild:child2];
    AKMCreature *child3 = [mother giveBirth];
    [mother addChild:child3];
    
    for (long index = mother.children.count - 1; 0 != index; index--) {
        if (AKMCreatureFemale == [[mother.children objectAtIndex:index -1] gender]) {
            [[mother.children objectAtIndex:index -1] giveBirth];
        } else [[mother.children objectAtIndex:index -1] makeWar];
    }
    
}

@end
