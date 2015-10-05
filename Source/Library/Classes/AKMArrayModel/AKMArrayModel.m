//
//  AKMArrayModel.m
//  UITask2
//
//  Created by Anton Kostenko on 03.10.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMArrayModel.h"

@interface AKMArrayModel()
@property (nonatomic, strong)   NSMutableArray  *array;

@end

@implementation AKMArrayModel

#pragma mark -
#pragma mark Initialization and Deallocation

- (instancetype)init {
    self = [super init];
    if (self) {
        self.array = [NSMutableArray new];
    }
    
    return self;
}

#pragma mark -
#pragma mark Accessors

- (id)modelAtIndex:(NSUInteger)index {
    return [self.array objectAtIndex:index];
}

- (void)addModel:(id)model {
    [self.array addObject:(model)];
}

- (void)removeModel:(id)model {
    [self.array removeObject:(model)];
}

- (void)removeModelAtIndex:(NSUInteger)index {
    [self.array removeObjectAtIndex:index];
}

- (void)insertModel:(id)model atIndex:(NSUInteger)index {
    [self.array insertObject:model atIndex:index];
}

- (void)moveObjectAtIndex:(NSUInteger)fromIndex toIndex:(NSUInteger)toIndex {
    NSMutableArray *models = self.array;
    id model = models[fromIndex];
    [models removeObjectAtIndex:fromIndex];
    [models insertObject:model atIndex:toIndex];
    
    self.array = models;
}

- (void)setObject:(id)model atIndexedSubscript:(NSUInteger)index {
    [self.array setObject:model atIndexedSubscript:index];
}

- (id)objectAtIndexedSubscript:(NSUInteger)index {
    return [self.array objectAtIndexedSubscript:index];
}

@end
