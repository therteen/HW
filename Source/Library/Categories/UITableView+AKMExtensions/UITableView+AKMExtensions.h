//
//  UITableView+AKMExtensions.h
//  UITask2
//
//  Created by Anton Kostenko on 14.10.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AKMArrayModelChangesOneIndex.h"
#import "AKMArrayModelChangesTwoIndices.h"

@interface UITableView (AKMExtensions)

- (void)applyChanges:(id)changes;

@end
