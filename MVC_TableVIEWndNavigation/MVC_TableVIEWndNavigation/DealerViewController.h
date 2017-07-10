//
//  ViewController.h
//  MVC_TableVIEWndNavigation
//
//  Created by Prahlad on 6/16/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "dealerbuilder.h"

@interface DealerViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>


@property(nonatomic,strong)NSArray* dealers;

@property (strong, nonatomic) IBOutlet UITableView *tableview;


@end

