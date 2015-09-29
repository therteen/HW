//
//  AKMItem.m
//  UITask2
//
//  Created by Anton Kostenko on 28.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMItem.h"

#import "NSString+AKMExtensions.h"

static const int kAKMItemNameLenght = 10;
static const NSString *kAKMItemImage = @"image";

@implementation AKMItem

@dynamic itemImage;

#pragma mark -
#pragma mark Initialization and deallocation

- (instancetype)init {
    self = [super init];
    self.itemName = [NSString randomStringWithLength:kAKMItemNameLenght];
    
    return self;
}

#pragma mark -
#pragma mark Initialization and deallocation

- (UIImage *)itemImage {
   return [UIImage imageNamed:kAKMItemImage];
}

@end
