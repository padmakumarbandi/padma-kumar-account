//
//  Groceries3ViewController.h
//  GroceriesStoreApp
//
//  Created by Prahlad on 6/22/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ItemModel.h"

@interface Groceries3ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *Label1;
@property (weak, nonatomic) IBOutlet UIImageView *imageIV;
@property (strong,nonatomic) ItemModel *itemModel;

@end
