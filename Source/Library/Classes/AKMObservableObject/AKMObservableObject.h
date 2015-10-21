//
//  AKMObservableObject.h
//  UITask2
//
//  Created by Anton Kostenko on 02.10.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AKMObservableObject : NSObject
@property (nonatomic, readonly) NSSet   *observerSet;
@property (nonatomic, assign) NSUInteger  *state;

- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (BOOL)isObservedByObject:(id)observer;

- (void)notifyOfChangedStateWithSelector:(SEL)selector withObject:(id)object;

- (SEL)selectorForState:(NSUInteger)state;

@end
