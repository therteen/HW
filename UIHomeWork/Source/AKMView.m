//
//  AKMView.m
//  UIHomeWork
//
//  Created by Anton Kostenko on 13.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMView.h"

@implementation AKMView

- (void)setSquarePosition:(AKMSquareViewPosition)position {
    
}

- (void)setSquarePosition:(AKMSquareViewPosition)position animation:(BOOL)animated {
    
}

- (void)setSquarePosition:(AKMSquareViewPosition)position animation:(BOOL)animated completion:(void (^)(void))completionHandler {
    if (animated) {
        [UIView animateWithDuration:5
                              delay:1
                            options:UIViewAnimationOptionCurveEaseInOut
                         animations:^{
                             CGRect newFrame = self.squareView.frame;
                             newFrame.origin.x += 250;
                             self.squareView.frame = newFrame;
                             NSLog(@"zhopa");
                             
                         }
                         completion:^(BOOL finished) {
                         }
         ];
    } else {
        _squareView.center = CGPointMake(300, 500);
    }
}
@end
