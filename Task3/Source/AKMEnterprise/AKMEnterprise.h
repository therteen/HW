//
//  AKMEnterprise.h
//  Task3
//
//  Created by Anton Kostenko on 04.08.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AKMBoss.h"
#import "AKMWasher.h"
#import "AKMAccountant.h"
#import "AKMCar.h"
#import "AKMQueue.h"

@interface AKMEnterprise : NSObject
@property (nonatomic, readonly) AKMQueue  *queue;
//@property (nonatomic, readonly) NSArray   *washers;
//@property (nonatomic, readonly) NSArray   *accountants;
//@property (nonatomic, readonly) AKMBoss   *director;

- (instancetype)initWithQueue NS_DESIGNATED_INITIALIZER;
- (void)dealloc;

- (void)hireStaff;
- (void)cleanCar:(AKMCar *)car;

@end
