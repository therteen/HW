//
//  AKMPayCash.h
//  Task3
//
//  Created by Anton Kostenko on 03.08.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AKMPayCash

- (void)payCash:(id)contragent amount:(uint8_t)value;

@end
