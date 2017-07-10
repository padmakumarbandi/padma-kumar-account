//
//  CarsListViewController.m
//  MVC_TableVIEWndNavigation
//
//  Created by Prahlad on 6/19/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "CarsListViewController.h"
#import "Carsdetails.h"
#import "CarDetailsViewController.h"
@interface CarsListViewController ()

@end

@implementation CarsListViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}
-(NSInteger)tableView:(UITableView*) tableView numberOfRowsInSection:(NSInteger)section{
    return self.carsListVc.count;
     
}

-(UITableView) tableView:(UITableView*)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    UITableViewCell*cell = [tableViewDequeueReUsableCellWithIdentifier:@"CardetailsCell"];
    {
        Carsdetails *car = self.carsListVc[indexPath.row];
        cell.textLabel.text =  Carsdetails.make;
        return cell;
}

    -(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
        
        UITableViewCell *cell =(UITableViewCell *) sender;
        NSIndexPath *indexpath = [self.tableView indexPathForCell: cell]
        if ([segue.identifier isEqualToString:@"CarToCarDetails"]){
            CarsdetailsViewController* Carsdetails =(CarDetailsViewController *)Segue.destinationViewController;
            Carsdetails.car = self.cars[indexPath.row];
            
        }
                                  
                                  




@end
