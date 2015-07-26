//
//  AKMHuman.h
//  AKMCreature
//
//  Created by Anton Kostenko on 17.07.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    AKMCreatureMale,
    AKMCreatureFemale
} AKMCreatureGender;

@interface AKMCreature : NSObject
@property (nonatomic, copy)         NSString            *name;
@property (nonatomic, assign)       uint8_t             age;
@property (nonatomic, assign)       uint8_t             weight;
//@property (nonatomic, assign)       AKMCreatureGender   gender;
@property (nonatomic, readonly)     NSArray             *children;

- (instancetype)initWithGender:(AKMCreatureGender)aGender NS_DESIGNATED_INITIALIZER;
- (instancetype)initWithName:(NSString *)aName gender:(AKMCreatureGender)aGender;

- (void)sayHello;
- (void)addChild:(AKMCreature *)child;
- (void)removeChild:(AKMCreature *)child;

- (id)performGenderSpecificOperation;

@end
