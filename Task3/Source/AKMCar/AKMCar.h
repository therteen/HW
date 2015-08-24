//
//  AKMCar.h
//  Task3
//
//  Created by Anton Kostenko on 26.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMPayCash.h"
#import "AKMConst.h"

@interface AKMCar : NSObject <AKMPayCash>

@property (nonatomic, assign, getter=isClean)   BOOL        clean;
@property (nonatomic, assign)                   UInt        cash;

- (instancetype)initWithCash;

@end
