//
//  CarsListViewController.m
//  MVCndTABleVIEWndNAVpractis2
//
//  Created by Prahlad on 6/21/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "CarsListViewController.h"
#import "Car.h"
@interface CarsListViewController ()

@end

@implementation CarsListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title =@"cars list";
    // Do any additional setup after loading the view.
}
-(NSInteger)tableView:(UITableView*) tableView numberOfRowsInSection:(NSInteger)section{
    return self.cars.count;
    
}

-(UITableView *) tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CarCell"];
    

        Car* car = self.cars[indexPath.row];
    cell.textLabel.text = car.make;
        return cell;

    }
@end
