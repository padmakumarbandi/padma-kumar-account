//
//  ViewController.h
//  MVCndTABleVIEWndNAVpractis2
//
//  Created by Prahlad on 6/20/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DealerListViewController : UIViewController<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableview;

@property(nonatomic, strong) NSArray *dealers;
@end

