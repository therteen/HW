//
//  AKMObservableObject.m
//  UITask2
//
//  Created by Anton Kostenko on 02.10.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMObservableObject.h"

@interface AKMObservableObject()
@property (nonatomic, strong)   NSHashTable    *observers;

@end

@implementation AKMObservableObject

#pragma mark -
#pragma mark Initializations and Deallocations

- (instancetype)init {
    self = [super init];
    if (self) {
        self.observers = [NSHashTable weakObjectsHashTable];
    }
    
    return self;
}

#pragma mark -
#pragma mark Accessors

- (NSSet *)observerSet {
    @synchronized(self.observers) {
        
        return [self.observers copy];
    }
}

#pragma mark -
#pragma mark Public

- (void)addObserver:(id)observer {
    @synchronized(self.observers) {
        [self.observers addObject:observer];
    }
}

- (void)removeObserver:(id)observer {
    @synchronized(self.observers) {
        [self.observers removeObject:observer];
    }
}

- (BOOL)isObservedByObject:(id)observer {
    @synchronized(self.observers) {
        
        return [self.observers containsObject:observer];
    }
}

- (void)notifyOfChangedStateWithSelector:(SEL)selector withObject:(id)object {
    NSHashTable *observers = self.observers;
    for (id observer in observers) {
        if ([observer respondsToSelector:selector]) {
            [observer performSelector:selector withObject:self withObject:object];
        }
    }
}

- (SEL)selectorForState:(NSUInteger)state {
    return nil;
}

@end
