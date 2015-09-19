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
    AKMMovingView *view = self.mainView;
    view.moving = !view.moving;
    if (!view.animating) {
        [view movingCyclicSquare];
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
