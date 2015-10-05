//
//  AKMListView.m
//  UITask2
//
//  Created by Anton Kostenko on 26.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMListView.h"

@implementation AKMListView

#pragma mark -
#pragma mark Accessors

- (void)setEditing:(BOOL)editing {
    [self setEditing:editing animated:YES];
}

#pragma mark -
#pragma mark Public

- (void)setEditing:(BOOL)editing animated:(BOOL)animated {
    [self.tableView setEditing:editing animated:animated];
}

@end
