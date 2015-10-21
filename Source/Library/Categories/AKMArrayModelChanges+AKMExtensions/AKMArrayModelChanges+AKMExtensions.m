//
//  AKMArrayModelChanges+AKMExtensions.m
//  UITask2
//
//  Created by Anton Kostenko on 19.10.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMArrayModelChanges+AKMExtensions.h"

#import "AKMArrayModelChangesOneIndex.h"
#import "AKMArrayModelChangesTwoIndices.h"

#import "NSIndexPath+AKMExtensions.h"

@implementation AKMArrayModelChanges (AKMExtensions)

- (void)applyChangesToView:(UITableView *)view {
    NSIndexPath *path = [(AKMArrayModelChangesOneIndex *)self indexPath];
//    NSIndexPath *from = [(AKMArrayModelChangesTwoIndices *)self fromPath];
//    NSIndexPath *to = [(AKMArrayModelChangesTwoIndices *)self toPath];

    switch ([self state]) {
        case AKMArrayModelChangeAdded:
            [view beginUpdates];
            [view insertRowsAtIndexPaths:@[path] withRowAnimation:YES];
            [view endUpdates];
            break;
            
        case AKMArrayModelChangeRemoved:
            [view beginUpdates];
            [view deleteRowsAtIndexPaths:@[path] withRowAnimation:YES];
            [view endUpdates];
            break;
            
        case AKMArrayModelChangeMoved:
//            [view moveRowAtIndexPath:from toIndexPath:to];
            break;
    }
}

@end
