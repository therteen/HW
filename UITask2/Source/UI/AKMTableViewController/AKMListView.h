//
//  AKMListView.h
//  UITask2
//
//  Created by Anton Kostenko on 26.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AKMListView : UIView
@property (nonatomic, strong)   IBOutlet    UITableView     *tableView;
@property (nonatomic, strong)   IBOutlet    UINavigationBar *navigationBar;

@property (nonatomic, getter=isEditing) BOOL    editing;

@end
