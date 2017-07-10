//
//  ViewController.m
//  MVC_TableVIEWndNavigation
//
//  Created by Prahlad on 6/16/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "DealerViewController.h"
#import "dealerbuilder.h"
#import "DelearDetails.h"
#import "DealerDetailsViewController.h"

@interface DealerViewController ()

@end

@implementation DealerViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    dealerbuilder *builder1 = [[dealerbuilder alloc]init];
    self.dealers = [builder1 dealerbuilderObjects];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dealers.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"dealercell"];
    DelearDetails *dealer = self.dealers[indexPath.row];
    cell.textLabel.text = self.DealerDetails.name;
    return cell;
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
  //  UITableViewCell *cell =(UITableViewCell *) sender;
   // NSIndexPath *indexPath = [self.dealers.n;
    
    
    
    if ([segue.identifier isEqualToString:@"DealersListDealerDetails"]){
        DealerDetailsViewController *dvc = (DealerDetailsViewController * ) segue.destinationViewController;
        
//        Dvc.dealloc = self.dealers [indexPath.row];
        dvc.Dealer1 = self.dealers[indexPath.row];
        
        
        
        
    }
    
    
    
}








- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
