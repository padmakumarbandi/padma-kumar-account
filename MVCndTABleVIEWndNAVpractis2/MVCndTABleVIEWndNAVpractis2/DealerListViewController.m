//
//  ViewController.m
//  MVCndTABleVIEWndNAVpractis2
//
//  Created by Prahlad on 6/20/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "DealerListViewController.h"
#import "DealerBuilder.h"
#import "Dealer.h"
#import "DealerDetailsViewController.h"
@interface DealerListViewController ()

@end

@implementation DealerListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DealerBuilder *builder = [[DealerBuilder alloc]init];
    self.dealers = [builder dealerbuilderObjects];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dealers.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"DealerCell"];
     Dealer *dealer = self.dealers[indexPath.row];
    cell.textLabel.text = dealer.Name;
    
    return cell;
}

//-for 2nd tableview code using segue:
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
        
    
          UITableViewCell *cell =(UITableViewCell *) sender;
         NSIndexPath *indexPath = [self.dealers.;
        
if ([segue.identifier isEqualToString:@"DealersListDealerDetails"]){

    DealerDetailsViewController *DealerListVc = (DealerDetailsViewController *) segue.destinationViewController;
    
    UITableViewCell *cell =(UITableViewCell *) sender;
    NSIndexPath *indexpath = [self.tableview indexPathForCell: cell];
    
    DealerListVc.dealer = self.dealers[indexpath.row];
    

//segue can not locate the destination but hear it reutrns the parent class to give the child class
}
}

    
    @end
