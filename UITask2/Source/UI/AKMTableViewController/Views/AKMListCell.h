//
//  AKMListCell.h
//  UITask2
//
//  Created by Anton Kostenko on 26.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMTableViewCell.h"

@class AKMItem;

@interface AKMListCell : AKMTableViewCell
@property (nonatomic, strong)    IBOutlet    UILabel     *itemLabel;
@property (nonatomic, strong)    IBOutlet    UIImageView *itemImage;

@property (nonatomic, strong)    AKMItem     *item;

@end
