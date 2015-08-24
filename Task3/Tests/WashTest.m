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
    AKMCar *car = [[AKMCar alloc] initWithCash];
    AKMCar *car1 = [[AKMCar alloc] initWithCash];
    AKMCar *car2 = [[AKMCar alloc] initWithCash];
    AKMCar *car3 = [[AKMCar alloc] initWithCash];
    AKMCar *car4 = [[AKMCar alloc] initWithCash];
    AKMCar *car5 = [[AKMCar alloc] initWithCash];
    
    [pomoika cleanCar:car];
    [pomoika cleanCar:car1];
    [pomoika cleanCar:car2];
    [pomoika cleanCar:car3];
    [pomoika cleanCar:car4];
    [pomoika cleanCar:car5];

    int index = 30;
    while (index--){
        [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:0.1]];
    };
    
    
}

@end
