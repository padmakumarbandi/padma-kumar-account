//
//  GroceriesoneViewController.m
//  GroceriesStoreApp
//
//  Created by Prahlad on 6/21/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "GroceriesoneViewController.h"
#import "GrocerieItems.h"

@interface GroceriesoneViewController ()

@end

@implementation GroceriesoneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.backgroundColor = [UIColor colorWithRed:140/255.f green:207/255.f blue:212/255.f alpha:100/255.f];
    customisedcell *CuCell = [[customisedcell alloc] init];
    self.Array1 = [CuCell StoresObjects];
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.Array1.count ;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GroceriesCell"];
    GrocerieItems *groceryitems = self.Array1[indexPath.row];/* some cell*/
    cell.textLabel.text = groceryitems.gcname;

return cell;
    
  


}
@end
