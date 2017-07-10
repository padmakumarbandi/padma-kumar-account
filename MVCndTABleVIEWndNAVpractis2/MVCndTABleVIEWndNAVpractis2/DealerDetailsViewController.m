//
//  DealerDetailsViewController.m
//  MVCndTABleVIEWndNAVpractis2
//
//  Created by Prahlad on 6/21/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "DealerDetailsViewController.h"

@interface DealerDetailsViewController ()

@end

@implementation DealerDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"DealerDetails";
    UIStoryboard * storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.CarsListVC = [storyboard instantiateViewControllerWithIdentifier:@"CarsListVIewController"];
    self.DealerContactInfoVC =[storyboard instantiateViewControllerWithIdentifier:@"DealerContactDetailsViewController"];
}
//2nd View Controller

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DealerdetailsCell"];
    if (indexPath.row==0) {
        cell.textLabel.text = @"cars";
    }else {
        cell.textLabel.text = @"Dealers";
    }return cell;
}
-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return self.dealer.Name;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
        if (indexPath.row==0) {
        self.CarsListVC = self.dealer.cars;
        [self.navigationController pushViewController:self.CarsListVC animated:YES];
    }
    else{
        self.DealerContactInfoVC.contactinfo = self.dealer.contactinfo;
        [self.navigationController pushViewController:self.DealerContactInfoVC animated:YES];
//
        
    }

    
}




@end
