//
//  ViewController.h
//  DiceApp
//
//  Created by IOS DEVELOPER on 7/23/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DiceView.h"

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet DiceView *img1;

@property (strong, nonatomic) IBOutlet UILabel *labelrol;
@property (strong, nonatomic) IBOutlet UIButton *Rolbutton;


@end

