//
//  AKMArrayModelChangesTwoIndeces.m
//  UITask2
//
//  Created by Anton Kostenko on 11.10.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMArrayModelChangesTwoIndices.h"

#import "NSIndexPath+AKMExtensions.h"

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

@implementation AKMArrayModelChangesTwoIndices (AKMIndexPath)

@dynamic fromPath;
@dynamic toPath;

+ (instancetype)modelWithState:(AKMArrayModelChangeType)state
                      fromPath:(NSIndexPath *)fromPath
                        toPath:(NSIndexPath *)toPath
{
    return [self modelWithState:state fromPath:fromPath toPath:toPath];
}

#pragma mark -
#pragma mark Accessors

- (NSIndexPath *)fromPath {
    return [NSIndexPath indexPathForRow:self.fromIndex];
}

- (NSIndexPath *)toPath {
    return [NSIndexPath indexPathForRow:self.toIndex];
}

#pragma mark -
#pragma mark table methods

- (void)applyChangesToView:(UITableView *)view {
    NSIndexPath *from = self.fromPath;
    NSIndexPath *to = self.toPath;
    [view moveRowAtIndexPath:from toIndexPath:to];
}

@end
