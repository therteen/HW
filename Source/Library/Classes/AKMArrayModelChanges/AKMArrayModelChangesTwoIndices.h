//
//  AKMArrayModelChangesTwoIndeces.h
//  UITask2
//
//  Created by Anton Kostenko on 11.10.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMArrayModelChanges.h"

@interface AKMArrayModelChangesTwoIndices : AKMArrayModelChanges
@property (nonatomic, assign) NSUInteger fromIndex;
@property (nonatomic, assign) NSUInteger toIndex;

@end

@interface AKMArrayModelChangesTwoIndices (AKMIndexPath)

@property (nonatomic, readonly) NSIndexPath *fromPath;
@property (nonatomic, readonly) NSIndexPath *toPath;

+ (instancetype)modelWithState:(AKMArrayModelChangeType)state
                      fromPath:(NSIndexPath *)fromPath
                        toPath:(NSIndexPath *)toPath;

@end
