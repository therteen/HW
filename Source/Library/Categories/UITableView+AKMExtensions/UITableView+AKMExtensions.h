//
//  UITableView+AKMExtensions.h
//  UITask2
//
//  Created by Anton Kostenko on 14.10.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AKMArrayModelChanges;

@interface UITableView (AKMExtensions)

- (void)applyChanges:(AKMArrayModelChanges *)changes;

@end
