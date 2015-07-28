//
//  AKMBuilding.h
//  Task3
//
//  Created by Anton Kostenko on 26.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AKMRoom.h"


@interface AKMBuilding : NSObject

@property (nonatomic,retain)    NSMutableArray    *rooms;
@property (nonatomic,retain)    NSMutableArray    *washBoxes;

- (instancetype)initWithRooms:(UInt32)quantity1 washBoxes:(UInt32)quantity2;

@end
