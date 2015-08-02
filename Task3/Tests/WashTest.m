//
//  WashTest.m
//  Task3
//
//  Created by Anton Kostenko on 26.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "WashTest.h"
#import "AKMBoss.h"
#import "AKMWasher.h"
#import "AKMAccountant.h"
#import "AKMCar.h"
#import "AKMQueue.h"
#import "AKMBuilding.h"


@implementation WashTest

+ (void)cashFlowTest {
    AKMBuilding *office = [[[AKMBuilding alloc] initWithRooms:1 washBoxes:0] autorelease];
    AKMBuilding *moika = [[[AKMBuilding alloc] initWithRooms:0 washBoxes:1] autorelease];
    AKMBoss *boss = [[[AKMBoss alloc] init] autorelease];
    AKMAccountant *buh = [[[AKMAccountant alloc] initWithBoss:boss]autorelease];
    [[office.rooms firstObject] addWorker:boss];
    [[office.rooms firstObject] addWorker:buh];
    
    AKMWasher *mokryi = [[[AKMWasher alloc] initWithBoss:buh] autorelease];
    [[moika.washBoxes firstObject] addWorker:mokryi];
    
    AKMCar *tachila = [[[AKMCar alloc] initWithCash] autorelease];
    AKMCar *tachila2 = [[[AKMCar alloc] initWithCash] autorelease];
    AKMQueue *ochered = [[[AKMQueue alloc] init] autorelease];
    [mokryi setQueue:ochered];
    [ochered putCar:tachila];
    [ochered putCar:tachila2];
    
    [mokryi doJob];
    [buh doJob];
    [boss doJob];
    
    [mokryi doJob];
    [buh doJob];
    [boss doJob];
    
}

@end
