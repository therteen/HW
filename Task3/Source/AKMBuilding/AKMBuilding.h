//
//  AKMBuilding.h
//  Task3
//
//  Created by Anton Kostenko on 26.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AKMBuilding : NSObject
//@property (nonatomic, copy)     NSString    *name;
@property (nonatomic,readonly)    NSArray     *rooms;

- (instancetype)initWithRooms:(UInt32)quantity;

@end
