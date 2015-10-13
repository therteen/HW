//
//  AKMArrayModelChangesTwoIndeces.m
//  UITask2
//
//  Created by Anton Kostenko on 11.10.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMArrayModelChangesTwoIndices.h"

@implementation AKMArrayModelChangesTwoIndices

+ (instancetype)modelWithState:(AKMArrayModelChangeType)state
                     fromIndex:(NSUInteger)fromIndex
                       toIndex:(NSUInteger)toIndex
{
    AKMArrayModelChangesTwoIndices *result = [super modelWithState:state] ;
    if (result) {
        result.fromIndex = fromIndex;
        result.toIndex = toIndex;
    }
    
    return result;
}

@end
