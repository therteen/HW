//
//  NSIndexPath+EMIExtensions.m
//  TableView_task_2
//
//  Created by Anton Kostenko on 11.10.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "NSIndexPath+AKMExtensions.h"

static const NSUInteger kAKMSectionNumber = 0;

@implementation NSIndexPath (AKMExtensions)

+ (instancetype)indexPathForRow:(NSUInteger)row {
    return [self indexPathForRow:row inSection:kAKMSectionNumber];
}

@end
