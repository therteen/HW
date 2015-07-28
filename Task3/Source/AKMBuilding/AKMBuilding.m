//
//  AKMBuilding.m
//  Task3
//
//  Created by Anton Kostenko on 26.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMBuilding.h"

@implementation AKMBuilding

- (instancetype)initWithRooms:(UInt32)quantity1 washBoxes:(UInt32)quantity2 {
    self = [super init];
    if (self) {
        self.rooms = [NSMutableArray array];
        self.washBoxes = [NSMutableArray array];
        
        for (int index = 0; index < quantity1; index++) {
            [self.rooms addObject:[[AKMRoom alloc] initWithCapacity:1 containWashBox:NO]];
        }
        
        for (int index = 0; index < quantity2; index++) {
            [self.washBoxes addObject:[[AKMRoom alloc] initWithCapacity:1 containWashBox:YES]];
        }
        
        return self;
    }
    
    return nil;
}

@end
