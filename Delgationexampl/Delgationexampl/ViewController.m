//
//  ViewController.m
//  Delgationexampl
//
//  Created by Prahlad on 6/28/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.m"
@interface ViewController ()

@end

@implementation ViewController

-(void)operationPerformed:(NSString *)operation
                  number1:(NSInteger)number1
                  number2:(NSInteger)number2
                   result:(NSInteger)result{
    
}
#pragma mark - Navigation
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    SecondViewController * secVC = (SecondViewController *)[segue destinationViewController ];
    secVC.delegate = self;
    if ([segue.identifier isEqualToString:@"add"]) {
        
         secVC.operationToPerform = @"+";
        
    }
    if ([segue.identifier isEqualToString:@"sub"]) {
        
        secVC.operationToPerform = @"-";
        
    }
    
    if ([segue.identifier isEqualToString:@"multi"]) {
        
        secVC.operationToPerform = @"*";
        
    }
    
        if ([segue.identifier isEqualToString:@"divi"]) {
            
            secVC.operationToPerform = @"/";
            
    

    
    
    
    
}
}
@end
