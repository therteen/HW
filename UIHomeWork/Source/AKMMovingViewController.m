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

- (void)viewDidLoad {
    [super viewDidLoad];
   //    [self.view addSubview:squareView];
//    self.squareView = squareView;
    


}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
//    AKMView *squareView = [AKMView new];
    [self.mainView setSquarePosition:1 animation:YES completion:nil];
 }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


@end
