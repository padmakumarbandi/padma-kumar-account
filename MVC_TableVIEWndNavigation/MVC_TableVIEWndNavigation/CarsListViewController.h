//
//  CarsListViewController.h
//  MVC_TableVIEWndNavigation
//
//  Created by Prahlad on 6/19/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DelearDetails.h"
#import"CarsListViewController.h"

@interface CarsListViewController : UIViewController

@property(nonatomic,strong) DelearDetails * dealer;
@property(nonatomic,strong)CarsListViewController * carsListVc;
@property(nonatomic,strong) NSArray*cars;

@property (weak, nonatomic) IBOutlet UITableView *tableview;

@end
