//
//  DealerDetailsViewController.h
//  MVC_TableVIEWndNavigation
//
//  Created by Prahlad on 6/19/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DelearDetails.h"
#import "CarsListViewController.h"
#import "DealerContactIinfoViewController.h"
@interface DealerDetailsViewController : UIViewController< UITableViewDataSource>
@property(nonatomic,strong) DelearDetails * Dealer1;
@property(nonatomic,strong) CarsListViewController * CarsListVC;
@property(nonatomic,strong) DealerContactIinfoViewController * DealerContactInfoVC;

@end
