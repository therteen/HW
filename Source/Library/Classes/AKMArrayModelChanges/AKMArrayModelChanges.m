//
//  AKMArrayModelChanges.m
//  UITask2
//
//  Created by Anton Kostenko on 11.10.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMArrayModelChanges.h"

@interface AKMArrayModelChanges()
@property (nonatomic, assign) AKMArrayModelChangeType state;

@end

@implementation AKMArrayModelChanges

+ (instancetype)modelWithState:(AKMArrayModelChangeType)state {
    AKMArrayModelChanges *result = [self new];
    if (result) {
        result.state = state;
    }
    
    return result;
}

@end
