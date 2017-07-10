//
//  CarDetailsViewController.m
//  MVC_TableVIEWndNavigation
//
//  Created by Prahlad on 6/20/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "CarDetailsViewController.h"

@interface CarDetailsViewController ()

@end

@implementation CarDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.carimgeview.image = self.car.image1;
    self.makelabel.text = self.car.make;
    self.color.text = self.car.modelcolor;
    self.year.text = self.car.Year;
    self.info.text = self.car.info; 
    
}


@end
