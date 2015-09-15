//
//  AKMView.m
//  UIHomeWork
//
//  Created by Anton Kostenko on 13.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMMovingView.h"
#import "const.h"

@interface AKMMovingView ()

- (CGRect)frameForSquarePosition:(AKMSquareViewPosition)position;

@end

@implementation AKMMovingView

- (void)setSquarePosition:(AKMSquareViewPosition)position {
    [self setSquarePosition:position animation:NO];
}

- (void)setSquarePosition:(AKMSquareViewPosition)position animation:(BOOL)animated {
    [self setSquarePosition:position animation:animated completion:nil];
}

- (void)setSquarePosition:(AKMSquareViewPosition)position
                animation:(BOOL)animated
               completion:(void (^)(void))completionHandler {
    
    [UIView animateWithDuration:(animationDuration * animated)
                          delay:animationDelay
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         self.squareView.frame = [self frameForSquarePosition:position];
                     }
                     completion:^(BOOL finished) {
                         if (completionHandler && finished) {
                             completionHandler();
                         }
                     }
     ];
    _squarePosition = position;
}

#pragma mark -
#pragma mark Private

- (CGRect)frameForSquarePosition:(AKMSquareViewPosition)position {
    CGRect square = self.squareView.frame;
    CGPoint point = CGPointZero;
    
    switch (position) {
        case AKMSquareViewTopRightPosition:
            point.x = CGRectGetWidth(self.frame) - CGRectGetWidth(square);
            break;
            
        case AKMSquareViewBottomLeftPosition:
            point.y = CGRectGetHeight(self.frame) - CGRectGetHeight(square);
            break;
            
        case AKMSquareViewBottomRightPosition:
            point.x = CGRectGetWidth(self.frame) - CGRectGetWidth(square);
            point.y = CGRectGetHeight(self.frame) - CGRectGetHeight(square);
            break;
            
        default:
            break;
    }
    
    square.origin = point;
    
    return square;
}

@end

