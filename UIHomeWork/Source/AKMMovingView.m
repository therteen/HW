//
//  AKMView.m
//  UIHomeWork
//
//  Created by Anton Kostenko on 13.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMMovingView.h"

#import "AKMMacros.h"

static const NSTimeInterval kAKMAnimationDuration = 1;
static const NSTimeInterval kAKMAnimationDelay = 0;

@interface AKMMovingView ()
@property (nonatomic, assign)   BOOL    animating;

- (CGRect)frameForSquarePosition:(AKMSquareViewPosition)position;
- (void)movingCyclicSquare;

@end

@implementation AKMMovingView

#pragma mark -
#pragma mark Setters

- (void)setSquarePosition:(AKMSquareViewPosition)position {
    [self setSquarePosition:position animation:NO];
}

- (void)setSquarePosition:(AKMSquareViewPosition)position animation:(BOOL)animated {
    [self setSquarePosition:position animation:animated completion:nil];
}

- (void)setSquarePosition:(AKMSquareViewPosition)position
                animation:(BOOL)animated
               completion:(void (^)(void))completionHandler {
    
    [UIView animateWithDuration:animated ? kAKMAnimationDuration : 0
                          delay:kAKMAnimationDelay
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         UIView *square = self.squareView;
                         square.frame = [self frameForSquarePosition:position];
                     }
                     completion:^(BOOL finished) {
                         _squarePosition = position;
                         if (completionHandler && finished) {
                             completionHandler();
                         }
                     }];
}

- (void)setMoving:(BOOL)moving {
    _moving = moving;
    if (!self.animating) {
        [self movingCyclicSquare];
    }
}


#pragma mark -
#pragma mark Private

- (CGRect)frameForSquarePosition:(AKMSquareViewPosition)position {
    CGRect square = self.squareView.frame;
    CGRect view = self.frame;
    CGPoint point = CGPointZero;
    
    CGFloat x =  CGRectGetMaxX(view) - CGRectGetMaxX(square);
    CGFloat y = CGRectGetMaxY(view) - CGRectGetMaxY(square);
    
    
    switch (position) {
        case AKMSquareViewTopRightPosition:
            point.x = x;
            break;
            
        case AKMSquareViewBottomLeftPosition:
            point.y = y;
            break;
            
        case AKMSquareViewBottomRightPosition:
            point.x = x;
            point.y = y;
            break;
            
        default:
            break;
    }
    square.origin = point;
    
    return square;
}

- (void)movingCyclicSquare {
    if (self.moving == YES) {
        self.animating = YES;
        AKMweakify(self);
        [self setSquarePosition:((self.squarePosition + 1) % AKMSquareViewPositionCount)
                      animation:YES
                     completion:^{
                         AKMstrongify(self);
                         self.animating = NO;
                         [self movingCyclicSquare];
                     }];
    }
}

@end
