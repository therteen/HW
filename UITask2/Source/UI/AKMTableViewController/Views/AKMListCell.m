//
//  AKMListCell.m
//  UITask2
//
//  Created by Anton Kostenko on 26.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMListCell.h"
#import "AKMItem.h"

@implementation AKMListCell

- (void)setItem:(AKMItem *)item {
    if (_item != item) {
        _item = item;
        [self fillWithModel:item];
    }
}

- (void)fillWithModel:(AKMItem *)item {
    self.item.name = item.name;
    self.item.image = item.image;
}

@end
