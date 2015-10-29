//
//  AKMTableViewController.m
//  UITask2
//
//  Created by Anton Kostenko on 22.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import "AKMListViewController.h"

#import "AKMListCell.h"
#import "AKMItems.h"
#import "AKMItem.h"
#import "AKMListView.h"

#import "AKMMacros.h"

//#import "NSIndexPath+AKMExtensions.h"
#import "UITableView+AKMExtensions.h"

static NSString *const kAKMAddItem  = @"AddItem";
static NSString *const kAKMEdit     = @"Edit";

AKMViewControllerMainViewProperty(AKMListViewController, listView, AKMListView)

@interface AKMListViewController ()

@end

@implementation AKMListViewController

#pragma mark -
#pragma mark Interface handling

- (void)onAddButton:(id)sender {
    [self.items addModel:[AKMItem new]];
}

- (void)onEditButton:(id)sender {
    AKMListView *listView = self.listView;
    listView.editing = !listView.editing;
}

#pragma mark -
#pragma mark View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.listView.navigationBar pushNavigationItem:self.navigationItem animated:YES];
    [self setupNavigationBar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark -
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

- (void)model:(id)model didChange:(id)changes {
    [self.listView.tableView applyChanges:changes];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellclass = NSStringFromClass([AKMListCell class]);
    AKMListCell *cell = [tableView dequeueReusableCellWithIdentifier:cellclass];
    if (!cell) {
        UINib *nib = [UINib nibWithNibName:cellclass bundle:nil];
        NSArray *cells = [nib instantiateWithOwner:nil options:nil];
        
        cell = [cells firstObject];
        cell.item = [self.items objectAtIndexedSubscript:(indexPath.row)];
    }
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

-   (void)tableView:(UITableView *)tableView
 commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
  forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.items removeModelAtIndex:indexPath.row];
//        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        
    }
}

-   (void)tableView:(UITableView *)tableView
 moveRowAtIndexPath:(NSIndexPath *)fromIndexPath
        toIndexPath:(NSIndexPath *)toIndexPath
{
    [self.items moveObjectAtIndex:fromIndexPath.row toIndex:toIndexPath.row];
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)setItems:(AKMItems *)items {
    if (_items != items) {
        [_items removeObserver:self];
        _items = items;
        [items addObserver:self];
    }
}

#pragma mark -
#pragma mark Private

- (void)setupNavigationBar {
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithTitle:kAKMAddItem
                                                                  style:UIBarButtonItemStylePlain
                                                                 target:self
                                                                 action:@selector(onAddButton:)];
    self.navigationItem.rightBarButtonItem = addButton;
    
    UIBarButtonItem *editButton = [[UIBarButtonItem alloc] initWithTitle:kAKMEdit
                                                                   style:UIBarButtonItemStylePlain
                                                                  target:self
                                                                  action:@selector(onEditButton:)];
    self.navigationItem.leftBarButtonItem = editButton;
}

/*
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end


