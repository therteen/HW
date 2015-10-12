//
//  AKMItem.m
//  UITask2
//
//  Created by Anton Kostenko on 28.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMItem.h"

#import "NSString+AKMExtensions.h"

static int const kAKMItemNameLenght = 10;
static NSString *const kAKMItemImage = @"cat";

@implementation AKMItem

@dynamic image;

#pragma mark -
#pragma mark Initialization and deallocation

- (instancetype)init {
    self = [super init];
    if (self) {
        _name = [NSString randomStringWithLength:kAKMItemNameLenght];
    }
    
    return self;
}

#pragma mark -
#pragma mark Accessors

- (UIImage *)image {
    return [UIImage imageNamed:kAKMItemImage];
}

@end
