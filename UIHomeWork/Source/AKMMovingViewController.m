//
//  AKMMovingViewController.m
//  UIHomeWork
//
//  Created by Anton Kostenko on 13.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMMovingViewController.h"
#import "AKMMovingView.h"

#import "AKMMacros.h"

AKMViewControllerMainViewProperty(AKMMovingViewController, mainView, AKMMovingView)

@implementation AKMMovingViewController

#pragma mark -
#pragma mark Public

- (IBAction)animationButton:(id)sender {
    AKMMovingView *view = self.mainView;
    view.moving = !view.moving;
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
