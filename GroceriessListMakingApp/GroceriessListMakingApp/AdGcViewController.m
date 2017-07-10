//
//  AdGcViewController.m
//  GroceriessListMakingApp
//
//  Created by Prahlad on 6/29/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "AdGcViewController.h"
#import "GroceriesList.h"
#import "GLViewController.h"
@interface AdGcViewController ()

@end

@implementation AdGcViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]}];
    self.alert1 =  [UIAlertController alertControllerWithTitle:@"i am warning you" message:@"ur MSG is canceld now" preferredStyle:UIAlertControllerStyleAlert];
    self.action1 = [UIAlertAction actionWithTitle:@"AlertWarning" style: UIAlertActionStyleCancel handler:nil];
    UIAlertAction * noAction = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleDefault handler:nil];
      UIAlertAction * someAction = [UIAlertAction actionWithTitle:@"Default" style:UIAlertActionStyleDestructive handler:nil];
    
    [self.alert1 addAction:self.action1];
    [self.alert1 addAction:noAction];
    [self.alert1 addAction:someAction];
//    [self dismissViewControllerAnimated:YES completion:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)cancelbutnhitd:(id)sender {
    NSString *GCname = self.GCNameTF.text;
    NSString *Quantity = self.GCquntTF.text;
    if (GCname.length >0 || Quantity.length >0) {
        [self presentViewController:self.alert1 animated:YES completion:nil];
    }else
    {
              [self dismissViewControllerAnimated:YES completion:nil];
        
    }
}

- (IBAction)SaveButnPrsd:(id)sender {
   NSString *GCname = self.GCNameTF.text;
    NSString *Quantity = self.GCquntTF.text;
    if (GCname.length >0 || Quantity.length >0) {
        GroceriesList * grocrry = [[GroceriesList alloc]initWithName:GCname quantity:[Quantity integerValue]];
        [self.delegate AddNewGrocerry:grocrry destinatinViewController: self];
    }else
    {
        [self dismissViewControllerAnimated:YES completion:nil];
        
    }
}
@end
