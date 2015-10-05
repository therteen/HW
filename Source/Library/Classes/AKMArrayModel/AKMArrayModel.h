//
//  AKMArrayModel.h
//  UITask2
//
//  Created by Anton Kostenko on 03.10.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMObservableObject.h"

@interface AKMArrayModel : AKMObservableObject <NSFastEnumeration, NSCoding>
@property (nonatomic, readonly) NSUInteger count;

- (id)modelAtIndex:(NSUInteger)index;

- (void)addModel:(id)model;
- (void)removeModel:(id)model;
- (void)removeModelAtIndex:(NSUInteger)index;
- (void)insertModel:(id)model atIndex:(NSUInteger)index;
- (void)moveObjectAtIndex:(NSUInteger)fromIndex toIndex:(NSUInteger)toIndex;

- (void)setObject:(id)model atIndexedSubscript:(NSUInteger)index;
- (id)objectAtIndexedSubscript:(NSUInteger)index;

@end
