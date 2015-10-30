//
//  UITableView+AKMExtensions.m
//  UITask2
//
//  Created by Anton Kostenko on 14.10.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "UITableView+AKMExtensions.h"

#import "AKMArrayModelChanges+UITableView.h"

@implementation UITableView (AKMExtensions)

- (void)applyChanges:(AKMArrayModelChanges *)changes {
    [self beginUpdates];
    [changes applyToTableView:self];
    [self endUpdates];
}

@end
