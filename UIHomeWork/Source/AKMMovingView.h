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

@interface AKMMovingView : UIView
@property (nonatomic, assign)   AKMSquareViewPosition   squarePosition;
@property (nonatomic, assign)   BOOL                    moving;
@property (nonatomic, assign)   BOOL                    animating;
@property (nonatomic, strong)   IBOutlet UIView         *squareView;
@property (nonatomic, strong)   IBOutlet UIButton       *actionButton;

- (void)setSquarePosition:(AKMSquareViewPosition)position
                animation:(BOOL)animated;
- (void)setSquarePosition:(AKMSquareViewPosition)position
                animation:(BOOL)animated
               completion:(void (^)(void))completionHandler;
- (void)movingCyclicSquare;

@end
