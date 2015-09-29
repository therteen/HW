//
//  AKMTableViewCell.m
//  UITask2
//
//  Created by Anton Kostenko on 28.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMTableViewCell.h"

@implementation AKMTableViewCell

- (NSString *)reuseIdentifier {
    return NSStringFromClass([self class]);
}

@end
