//
//  WashTest.m
//  Task3
//
//  Created by Anton Kostenko on 26.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "WashTest.h"
#import "AKMCar.h"
#import "AKMQueue.h"
#import "AKMEnterprise.h"

@implementation WashTest

+ (void)cashFlowTest {
    
    AKMEnterprise *pomoika = [[[AKMEnterprise alloc] init] autorelease];
    [pomoika hireStaff];
    
    int cars = 100;
    while (cars--){
        [pomoika performSelectorInBackground:@selector(cleanCar:) withObject:[[AKMCar alloc] initWithCash]];
    };
    
    
    while (pomoika.director.cash != (100 * kWashPrice * 20 /100)) {
        [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:0.1]];
    }
}

@end
