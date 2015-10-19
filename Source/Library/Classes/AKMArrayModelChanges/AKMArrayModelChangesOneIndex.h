//
//  AKMArrayModelChangesOneIndex.h
//  UITask2
//
//  Created by Anton Kostenko on 11.10.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMArrayModelChanges.h"

@interface AKMArrayModelChangesOneIndex : AKMArrayModelChanges
@property (nonatomic, readonly) NSUInteger index;

+ (instancetype)modelWithState:(AKMArrayModelChangeType)state index:(NSUInteger)index;

@end

@interface AKMArrayModelChangesOneIndex (AKMIndexPath)
@property (nonatomic, readonly) NSIndexPath *indexPath;

+ (instancetype)modelWithState:(AKMArrayModelChangeType)state indexPath:(NSIndexPath *)indexPath;

@end

