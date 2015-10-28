//
//  AKMArrayModelChangesOneIndex.m
//  UITask2
//
//  Created by Anton Kostenko on 11.10.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMArrayModelChangesOneIndex.h"

#import "NSIndexPath+AKMExtensions.h"

@interface AKMArrayModelChangesOneIndex()
@property (nonatomic, assign) NSUInteger index;

@end

@implementation AKMArrayModelChangesOneIndex

+ (instancetype)modelWithState:(AKMArrayModelChangeType)state index:(NSUInteger)index {
    AKMArrayModelChangesOneIndex *result = [self modelWithState:state];
    if (result) {
        result.index = index;
    }
    
    return result;
}

@end

@implementation AKMArrayModelChangesOneIndex (AKMIndexPath)

@dynamic indexPath;

+ (instancetype)modelWithState:(AKMArrayModelChangeType)state indexPath:(NSIndexPath *)indexPath {
    return [self modelWithState:state indexPath:indexPath];
}

#pragma mark -
#pragma mark Accessors

- (NSIndexPath *)indexPath {
    return [NSIndexPath indexPathForRow:self.index];
}

#pragma mark -
#pragma mark table methods

- (void)applyChangesToView:(UITableView *)view {
    NSIndexPath *path = self.indexPath;
    
    switch ([self state]) {
        case AKMArrayModelChangeAdded:
            [view insertRowsAtIndexPaths:@[path] withRowAnimation:YES];
            break;
            
        case AKMArrayModelChangeRemoved:
            [view deleteRowsAtIndexPaths:@[path] withRowAnimation:YES];
            break;
            
        default:
            break;
    }
}

@end
