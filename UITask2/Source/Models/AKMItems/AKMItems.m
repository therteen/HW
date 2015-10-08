//
//  AKMItems.m
//  UITask2
//
//  Created by Anton Kostenko on 28.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMItems.h"

#import "AKMItem.h"

static const NSUInteger kAKMModelsCount = 20;

@implementation AKMItems

#pragma mark -
#pragma mark Initialization and deallocation

- (instancetype)init {
    self = [super init];
    [self fillWithModels:kAKMModelsCount];
    
    return self;
}

#pragma mark -
#pragma mark Private

- (void)fillWithModels:(NSUInteger)modelsCount {
    for (int index = 0 ; index < modelsCount ; index++) {
        [self addModel:[AKMItem new]];
    }
}

@end
