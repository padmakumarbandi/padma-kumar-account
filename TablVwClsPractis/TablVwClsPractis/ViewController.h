//
//  ViewController.h
//  TablVwClsPractis
//
//  Created by Prahlad on 6/11/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property(copy, nonatomic) NSArray * Itemslist;

@end

