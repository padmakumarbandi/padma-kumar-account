//
//  Groceries2ViewController.m
//  GroceriesStoreApp
//
//  Created by Prahlad on 6/22/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "Groceries2ViewController.h"
#import "ItemModel.h"

@interface Groceries2ViewController ()

@end

@implementation Groceries2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = self.groceryItems.gcname;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.groceryItems.itemlist.count ;
    //its an array there alocated(return) index with no 
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Groceries2Cell"];
    ItemModel *itemModel = self.groceryItems.itemlist[indexPath.row];

    UIImageView *image1 = (UIImageView*)[cell viewWithTag:102];
    UILabel *label1 = (UILabel*)[cell viewWithTag:100];// we customized the cell and
    UILabel *label2 = (UILabel*)[cell viewWithTag:101];
    image1.image = itemModel.itempic;

    label1.text = itemModel.itemcatg;

    label2.text = itemModel.itemdes;
  
    return cell;
}


-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.grocery3VC = [storyBoard instantiateViewControllerWithIdentifier:@"Groceries3ViewControllers"];
    self.grocery3VC.itemModel = self.groceryItems.itemlist[indexPath.row];
    [self.navigationController pushViewController:self.grocery3VC animated:YES];
    
}

@end
