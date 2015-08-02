//
//  AKMStaff.h
//  Task3
//
//  Created by Anton Kostenko on 25.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AKMStaff : NSObject

@property (nonatomic, assign)   UInt32 experience;
@property (nonatomic, assign)   UInt32 salary;
@property (nonatomic, assign)   id boss;
@property (nonatomic, assign)     uint8_t cash;

- (instancetype)initWithBoss:(AKMStaff *)boss;

- (void)payCash:(AKMStaff *)contragent amount:(uint8_t)value;
- (void)doJob;

@end
