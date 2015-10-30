////
////  AKMArrayModelChanges+AKMExtensions.m
////  UITask2
////
////  Created by Anton Kostenko on 19.10.15.
////  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMArrayModelChanges+UITableView.h"

#import "AKMArrayModelChangesOneIndex.h"
#import "AKMArrayModelChangesTwoIndices.h"

#import "NSIndexPath+AKMExtensions.h"

@implementation AKMArrayModelChanges (UITableView)

- (void)applyToTableView:(UITableView *)tableView {

}

@end

@implementation AKMArrayModelChangesOneIndex (AKMExtensions)

- (void)applyToTableView:(UITableView *)tableView {
    NSArray *paths = @[self.indexPath];
    
    switch ([self state]) {
        case AKMArrayModelChangeAdded:
            [tableView insertRowsAtIndexPaths:paths withRowAnimation:UITableViewRowAnimationAutomatic];
            break;
            
        case AKMArrayModelChangeRemoved:
            [tableView deleteRowsAtIndexPaths:paths withRowAnimation:UITableViewRowAnimationAutomatic];
            break;
            
        default:
            break;
    }
}

@end

@implementation AKMArrayModelChangesTwoIndices (AKMExtensions)

- (void)applyToTableView:(UITableView *)tableView {
    [tableView moveRowAtIndexPath:self.fromPath toIndexPath:self.toPath];
}

@end
