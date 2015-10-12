//
//  AKMArrayModel.m
//  UITask2
//
//  Created by Anton Kostenko on 03.10.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMArrayModel.h"

#import "AKMArrayModelChangesOneIndex.h"
#import "AKMArrayModelChangesTwoIndeces.h"

#import "NSIndexPath+AKMExtensions.h"

static NSString *const kAKMModelsArrayName = @"array";

@interface AKMArrayModel()
@property (nonatomic, strong)   NSMutableArray  *array;

@end

@implementation AKMArrayModel

@dynamic count;

#pragma mark -
#pragma mark Initialization and Deallocation

- (instancetype)init {
    self = [super init];
    if (self) {
        self.array = [NSMutableArray new];
    }
    
    return self;
}

- (void)dealloc {
    self.array = nil;
}

#pragma mark -
#pragma mark Accessors

- (NSUInteger)count {
    return self.array.count;
}

- (id)modelAtIndex:(NSUInteger)index {
    return [self.array objectAtIndex:index];
}

- (void)addModel:(id)model {
    [self.array addObject:(model)];
//    [self notifyForChangedStateWithSelector:@selector(AKMArrayModelChanged)
//                                 withObject:[AKMArrayModelChangesOneIndex modelWithState:AKMArrayModelChangeAdded
//                                                                                   index:self.array.count]];
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

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state
                                  objects:(__unsafe_unretained id [])buffer
                                    count:(NSUInteger)len {
    return [self.array countByEnumeratingWithState:state objects:buffer count:len];
}

#pragma mark -
#pragma mark NSCoding

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.array = [[aDecoder decodeObjectForKey:kAKMModelsArrayName] mutableCopy];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.array forKey:kAKMModelsArrayName];
}

@end
