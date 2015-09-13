//
//  AKMView.h
//  UIHomeWork
//
//  Created by Anton Kostenko on 13.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, AKMSquareViewPosition) {
    AKMSquareViewTopLeftPosition,
    AKMSquareViewTopRightPosition,
    AKMSquareViewBottomRightPosition,
    AKMSquareViewBottomLeftPosition,
    AKMSquareViewPositionCount,
};


@interface AKMView : UIView
@property (nonatomic, strong) IBOutlet UIView *squareView;
@property (nonatomic, assign) AKMSquareViewPosition squarePosition;


- (void)setSquarePosition:(AKMSquareViewPosition)position;
- (void)setSquarePosition:(AKMSquareViewPosition)position animation:(BOOL)animated;
- (void)setSquarePosition:(AKMSquareViewPosition)position animation:(BOOL)animated completion:(void (^)(void))completionHandler;

@end
