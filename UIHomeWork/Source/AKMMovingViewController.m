//
//  AKMMovingViewController.m
//  UIHomeWork
//
//  Created by Anton Kostenko on 13.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMMovingViewController.h"

@interface AKMMovingViewController ()

@end

@implementation AKMMovingViewController

@dynamic mainView;

#pragma mark -
#pragma mark Accessors

- (AKMMovingView *)mainView {
    if ([self isViewLoaded] && [self.view isKindOfClass:[AKMMovingView class]]) {
        return (AKMMovingView *)self.view;
    }
    
    return nil;
}

#pragma mark -
#pragma mark Public

- (IBAction)animationButton:(id)sender {
    self.mainView.moving = !self.mainView.moving;
    if (!self.mainView.animating) {
        [self.mainView movingCyclicSquare];
    }
}

#pragma mark -
#pragma mark View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
