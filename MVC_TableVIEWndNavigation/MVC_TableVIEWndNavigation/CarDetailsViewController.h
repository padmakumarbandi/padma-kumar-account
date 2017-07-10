//
//  CarDetailsViewController.h
//  MVC_TableVIEWndNavigation
//
//  Created by Prahlad on 6/20/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Carsdetails.h"
@interface CarDetailsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *carimgeview;


@property (weak, nonatomic) IBOutlet UILabel *makelabel;
@property (weak, nonatomic) IBOutlet UILabel *color;




@property (weak, nonatomic) IBOutlet UILabel *year;


@property (weak, nonatomic) IBOutlet UILabel *info;

@property(nonatomic,strong) Carsdetails* car;

@end
