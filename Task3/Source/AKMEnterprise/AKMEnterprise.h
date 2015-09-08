//
//  AKMEnterprise.h
//  Task3
//
//  Created by Anton Kostenko on 04.08.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AKMHandleFreeState.h"

#import "AKMBoss.h"

@class AKMCar;

@interface AKMEnterprise : NSObject <AKMHandleFreeState>
@property (nonatomic, readonly) AKMBoss   *director;

- (instancetype)init;

- (void)hireStaff;
- (void)cleanCar:(AKMCar *)car;

@end
