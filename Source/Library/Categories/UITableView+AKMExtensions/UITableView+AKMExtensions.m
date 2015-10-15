//
//  UITableView+AKMExtensions.m
//  UITask2
//
//  Created by Anton Kostenko on 14.10.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "UITableView+AKMExtensions.h"
#import "NSIndexPath+AKMExtensions.h"

@interface UITableView ()

@end

@implementation UITableView (AKMExtensions)

- (void)applyChanges:(AKMArrayModelChanges *)changes toView:(UITableView *)view {
    NSIndexPath *path   = [NSIndexPath indexPathForRow:((AKMArrayModelChangesOneIndex *)changes).index];
    
    AKMArrayModelChangesTwoIndeces *moveChanges = (AKMArrayModelChangesTwoIndeces *)changes;
    NSIndexPath *from   = [NSIndexPath indexPathForRow:moveChanges.fromIndex];
    NSIndexPath *to     = [NSIndexPath indexPathForRow:moveChanges.toIndex];
    
    switch (changes.state) {
        case AKMArrayModelChangeAdded:
            [view insertRowsAtIndexPaths:@[path] withRowAnimation:YES];
            break;
            
        case AKMArrayModelChangeRemoved:
            [view deleteRowsAtIndexPaths:@[path] withRowAnimation:YES];
            
        case AKMArrayModelChangeMoved:
            [view moveRowAtIndexPath:from toIndexPath:to];
    }
}

@end
