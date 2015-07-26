//
//  AKMQueue.h
//  Task3
//
//  Created by Anton Kostenko on 27.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AKMQueue : NSObject

@property (nonatomic, retain)   NSMutableArray  *carsQueue;

- (id)getCar;
- (void)putCar:(id)car ;

- (instancetype)init;

@end
