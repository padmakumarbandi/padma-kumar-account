//
//  ViewController.m
//  CoFFeeAPP
//
//  Created by Prahlad on 6/5/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"a.jpg"] ];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)clalculationButtonIsPressed:(id)sender {
    NSLog(@"CalculateButtonpressed");
    
    float water =[[self.waterTextFields text] floatValue];
    float ratio = [[self.ratioTextField text] floatValue];
    
    NSLog(@"water:  %f ratio: %f", water, ratio);
    
    float coffee = water / ratio;
    NSLog(@"Coffee: %f", coffee);
    NSString *coffeeText = [NSString stringWithFormat:@"%f",coffee];
    
    
    self. coffeeTetField. text = coffeeText;
    
    
    
    
    
    
    
    
    
    
}
@end
