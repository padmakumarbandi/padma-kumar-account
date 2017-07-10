//
//  SecondViewController.m
//  Delgationexampl
//
//  Created by Prahlad on 6/28/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([self.operationToPerform isEqualToString:@"+"]) {
        self.title =@"addition";
        
    }
    else if ([self.operationToPerform isEqualToString:@"-"]) {
        self.title =@"sub";
        
    }
    else if ([self.operationToPerform isEqualToString:@"*"]) {
        self.title =@"mul";
    }
    else if ([self.operationToPerform isEqualToString:@"/"]) {
        self.title =@"Divi";
    }
}


- (IBAction)Calculate:(id)sender {
// performs calulation
    NSInteger  NUM1  = self.num1textfiled.text.integerValue;
    NSInteger NUM2  = self.num1textfiled.text.integerValue;
    NSInteger total = 0;
    if ([self.operationToPerform isEqualToString:@"+"]) {
        total = NUM1 + NUM2;
    
        
    }
    else if ([self.operationToPerform isEqualToString:@"-"]) {
    total = NUM1 - NUM2;


        
    }
    else if ([self.operationToPerform isEqualToString:@"*"]) {
        total = NUM1 * NUM2;
    }
    else if ([self.operationToPerform isEqualToString:@"/"]) {
 total  = NUM1 / NUM2;
    }
    self.totaldisplaylabel.text = [NSString stringWithFormat:@"%ld",total];
    
}

- (IBAction)Donebutton:(id)sender {
//    performs calculations in the first screen and then go backs
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)CancelButton:(id)sender {
//    go back without doing anything
    [self.navigationController popViewControllerAnimated:YES];
}
@end
