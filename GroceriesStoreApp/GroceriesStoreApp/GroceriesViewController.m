//
//  GroceriesViewController.m
//  GroceriesStoreApp
//
//  Created by Prahlad on 6/22/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "GroceriesViewController.h"
#import "GrocerieItems.h"
#import "customisedcell.h"

#import "Groceries2ViewController.h"

@interface GroceriesViewController ()

@end

@implementation GroceriesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Grocery Store";
    customisedcell *CuCell = [[customisedcell alloc] init];//hear we just took a vriable and alloted memory
    self.Array1 = [CuCell StoresObjects];//hear we are passing the objects in the cucell to array
    
}
// first table
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.Array1.count ;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GroceriesCell"];
    GrocerieItems *groceryitems = self.Array1[indexPath.row];/* some cell .........hear we created a variable   to returning the object,<<<<<???? we creared becOZ Array returns only id  */
    cell.textLabel.text = groceryitems.gcname;
    
    return cell;
    
}
//   2nd table
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    

    // 
    
    if ([segue.identifier isEqualToString:@"GC1tiGc2"]){
        
        Groceries2ViewController *gVc2 = (Groceries2ViewController *) segue.destinationViewController;
        
        UITableViewCell *cell =(UITableViewCell *) sender;
        NSIndexPath *indexpath = [self.tableView indexPathForCell: cell];
        
        gVc2.groceryItems = self.Array1[indexpath.row]
        ;
        
    }
}

@end
