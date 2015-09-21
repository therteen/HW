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
    
    NSTimeInterval duration = kAKMAnimationDuration;
    if (!animated)  duration = 0;
    [UIView animateWithDuration:duration
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

#pragma mark -
#pragma mark Private

- (CGRect)frameForSquarePosition:(AKMSquareViewPosition)position {
    CGRect square = self.squareView.frame;
    CGRect view = self.frame;
    CGPoint point = CGPointZero;
    
    CGFloat x = view.size.width - square.size.width;
    CGFloat y = view.size.height - square.size.height;
    
    
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
        [self setSquarePosition:((AKMSquareViewPositionCount + self.squarePosition + 1) % AKMSquareViewPositionCount)
                      animation:YES
                     completion:^{
                         __AKMWeakself.animating = NO;
                         [__AKMWeakself movingCyclicSquare];
                     }];
    }
}

@end
