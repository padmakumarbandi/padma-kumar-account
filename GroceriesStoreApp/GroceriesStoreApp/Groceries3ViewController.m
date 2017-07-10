//
//  Groceries3ViewController.m
//  GroceriesStoreApp
//
//  Created by Prahlad on 6/22/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "Groceries3ViewController.h"

@interface Groceries3ViewController ()

@end

@implementation Groceries3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = self.itemModel.itemcatg;
    self.imageIV.image = self.itemModel.itempic;
    self.Label1.text = self.itemModel.itemdes;
}



@end
