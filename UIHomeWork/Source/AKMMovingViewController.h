//
//  AKMMovingViewController.h
//  UIHomeWork
//
//  Created by Anton Kostenko on 13.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AKMMovingView.h"

@interface AKMMovingViewController : UIViewController
- (IBAction)animationButton:(id)sender;
@property (nonatomic, readonly) AKMMovingView *mainView;


@end
