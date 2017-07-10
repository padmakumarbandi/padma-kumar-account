//
//  DealerDetailsViewController.m
//  MVC_TableVIEWndNavigation
//
//  Created by Prahlad on 6/19/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "DealerDetailsViewController.h"

@interface DealerDetailsViewController ()

@end

@implementation DealerDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"dealer details";
    UIStoryboard * storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.CarsListVC = [storyboard instantiateViewControllerWithIdentifier:@"CarsListVIewController"];
 
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
    
    
}

-(UITableView) tableView:(UITableView*)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    UITableViewCell*cell = [tableViewDequeueReUsableCellWithIdentifier:@"DealerDetailsCell"];
    if (indexPath.row==) {
cell.textLabel.text = @"cars";
    }else {
        cell.textLabel.text= @"Dealers";
    }return cell;
}


-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    
    if (indexPath.row==0) {
        self.CarsListVC = self.Dealer1z.cars;
        [self.navigationController pushViewController:self.CarsListVC animated:YES];
    }
    else{
        self.DealerContactInfoVC.contactinfo = self.Dealer.contact_info;
        [self.navigationController pushViewController:self.DealerContactInfoVC animated:YES];
        
        
    }
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    .
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
