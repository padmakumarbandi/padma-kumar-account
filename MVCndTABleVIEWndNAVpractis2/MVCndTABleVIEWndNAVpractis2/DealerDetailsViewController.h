//
//  DealerDetailsViewController.h
//  MVCndTABleVIEWndNAVpractis2
//
//  Created by Prahlad on 6/21/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Dealer.h"
#import "CarsListViewController.h"
#import "DealerContactDetailsViewController.h"
@interface DealerDetailsViewController : UIViewController< UITableViewDataSource, UITableViewDelegate>

@property(nonatomic,strong) Dealer * dealer;
@property(nonatomic,strong) CarsListViewController * CarsListVC;
@property(nonatomic,strong) DealerContactDetailsViewController * DealerContactInfoVC;


@end
