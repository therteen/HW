//
//  AKMFemale.m
//  AKMHuman
//
//  Created by Anton Kostenko on 22.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMFemale.h"

@implementation AKMFemale

- (id)performGenderSpecificOperation {
    return [[[AKMCreature alloc] initWithGender:(arc4random_uniform(2))] autorelease];
}

@end
