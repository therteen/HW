//
//  AKMView.m
//  UIHomeWork
//
//  Created by Anton Kostenko on 13.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMMovingView.h"

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
    
    [UIView animateWithDuration:(kAKMAnimationDuration * animated)
                          delay:kAKMAnimationDelay
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         self.squareView.frame = [self frameForSquarePosition:position];
                     }
                     completion:^(BOOL finished) {
                         _squarePosition = position;
                         if (completionHandler && finished) {
                             completionHandler();
                         }
                     }
     ];
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
        AKMMovingView * __weak weakself = self;
        [self setSquarePosition:arc4random_uniform(AKMSquareViewPositionCount)
                      animation:YES
                     completion:^{
                         weakself.animating = NO;
                         [weakself movingCyclicSquare];
                     }];
    }
}

@end
