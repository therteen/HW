//
//  AKMArrayModelChanges.h
//  UITask2
//
//  Created by Anton Kostenko on 11.10.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, AKMArrayModelChangeType) {
    AKMArrayModelChangeAdded,
    AKMArrayModelChangeRemoved,
    AKMArrayModelChangeMoved
};

@interface AKMArrayModelChanges : NSObject
@property (nonatomic, readonly) AKMArrayModelChangeType state;

+ (instancetype)modelWithState:(AKMArrayModelChangeType)state;

- (void)applyChangesToView:(UITableView *)view;

@end
