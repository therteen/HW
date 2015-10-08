//
//  AKMTableViewController.h
//  UITask2
//
//  Created by Anton Kostenko on 22.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AKMItems;
@class AKMListView;

@interface AKMListViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, readonly) AKMItems *items;

- (void)setItems:(AKMItems *)items;

@end
