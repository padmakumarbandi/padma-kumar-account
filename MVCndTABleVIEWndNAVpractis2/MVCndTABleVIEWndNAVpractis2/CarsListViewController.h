//
//  CarsListViewController.h
//  MVCndTABleVIEWndNAVpractis2
//
//  Created by Prahlad on 6/21/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Dealer.h"

@interface CarsListViewController : UIViewController<UITableViewDataSource>

@property(nonatomic,strong) Dealer * dealer;
@property(nonatomic,strong)CarsListViewController * carsListVc;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic,strong) NSArray*cars;
@end
