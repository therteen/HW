//
//  AKMArrayModelChangesOneIndex.m
//  UITask2
//
//  Created by Anton Kostenko on 11.10.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMArrayModelChangesOneIndex.h"

@interface AKMArrayModelChangesOneIndex()
@property (nonatomic, assign) NSUInteger index;

@end

@implementation AKMArrayModelChangesOneIndex

+ (instancetype)modelWithState:(AKMArrayModelChangeType)state index:(NSUInteger)index {
    AKMArrayModelChangesOneIndex *result = [super modelWithState:state] ;
    if (result) {
        result.index = index;
    }
    
    return result;
}

@end
