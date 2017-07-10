//
//  Groceries2ViewController.h
//  GroceriesStoreApp
//
//  Created by Prahlad on 6/22/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ItemModel.h"
#import "customisedcell.h"
#import "GrocerieItems.h"
#import "Groceries3ViewController.h"

@interface Groceries2ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UIView *tableView;
@property (nonatomic,strong) GrocerieItems *groceryItems;
@property (nonatomic,strong) Groceries3ViewController *grocery3VC;
@end
