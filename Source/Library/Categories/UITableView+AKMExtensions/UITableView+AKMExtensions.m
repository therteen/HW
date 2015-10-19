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

- (void)applyChanges:(id)changes {
    switch ([changes state]) {
        case AKMArrayModelChangeAdded:
            [self insertRowsAtIndexPaths:@[[changes indexPath]] withRowAnimation:YES];
            break;
            
        case AKMArrayModelChangeRemoved:
            [self deleteRowsAtIndexPaths:@[[changes indexPath]] withRowAnimation:YES];
            break;
            
        case AKMArrayModelChangeMoved:
            [self moveRowAtIndexPath:[changes fromPath] toIndexPath:[changes toPath]];
    }
}

@end
