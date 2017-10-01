//
//  ViewController.m
//  DiceApp
//
//  Created by IOS DEVELOPER on 7/23/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "ViewController.h"
#import "Dicerequirements.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)dicebutnhited:(id)sender {
    
    Dicerequirements *dicerequ1 = [[Dicerequirements alloc]init];
    int firstnumber = [dicerequ1 getDieNumbervalue];
    int secondNumber = [dicerequ1 getDieNumbervalue];
    DiceView *DIeVw1 = [[DiceView alloc]init];
    DiceView *DieVw2 = [[DiceView alloc]init];
    [DIeVw1 showDieNUmber:firstnumber];
    [DieVw2 showDieNUmber:secondNumber];
    self.labelrol.text = [NSString stringWithFormat:@"the Sum of %d", firstnumber];
     
    
}


@end
