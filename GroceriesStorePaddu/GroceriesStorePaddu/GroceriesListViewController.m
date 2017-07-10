//
//  ViewController.m
//  GroceriesStorePaddu
//
//  Created by Prahlad on 6/19/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "GroceriesListViewController.h"
#import "Spices.h"
@interface GroceriesListViewController ()

@end

@implementation GroceriesListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Stores *store = [[Stores alloc] init];
    self.ListOfGroceries = [store StoresObjects];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.ListOfGroceries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"GroceriesCell"];
  //  Stores * store = self.Store[indexPath.row];
    Spices *spice = self.ListOfGroceries[indexPath.row];
    cell.textLabel.text = spice.Sp_name;
    
    return cell;
}


@end
