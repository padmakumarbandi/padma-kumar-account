//
//  ViewController.h
//  GroceriesStorePaddu
//
//  Created by Prahlad on 6/19/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Stores.h"
@interface GroceriesListViewController : UIViewController<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableview;

@property(nonatomic, strong) NSArray *ListOfGroceries;
@end

