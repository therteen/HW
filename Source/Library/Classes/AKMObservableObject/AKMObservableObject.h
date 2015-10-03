//
//  AKMObservableObject.h
//  UITask2
//
//  Created by Anton Kostenko on 02.10.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AKMObservableObject : NSObject
@property (nonatomic, readonly) NSSet       *observerSet;

- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (BOOL)isObservedByObject:(id)observer;

- (void)notifyForChangedStateWithSelector:(SEL)selector withObject:(id)object;

@end
