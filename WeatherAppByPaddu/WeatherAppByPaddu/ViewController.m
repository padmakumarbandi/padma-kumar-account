//
//  ViewController.m
//  WeatherAppByPaddu
//
//  Created by IOS DEVELOPER on 7/15/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "ViewController.h"
#import "WeatherNetworkManaging.h"
#import "weatherBuilder.h"
#import "weatherobjectclass.h"
#import "weatherCell.h"

@interface ViewController ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic, strong) NSArray *weatherArray;
//@property (weak, nonatomic) IBOutlet UITableView *tableview;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%f", self.coordinates.latitude);
    __weak __typeof(self) weakSelf = self;
    [ weatherobjectclass buildWeatheObjectsForCoordinates:self.coordinates successblock:^(NSArray *weatherArray) {
        
        weakSelf.weatherArray = weatherArray;
        [weakSelf.tableView reloadData];
        
    } failureBlock:^(NSError *error) {
        
    }];

    
//[weatherobjectclass buildWeatheObjectsWithSuccessBlock:^(NSArray *weatherArray) {
//    weakSelf.weatherArray = weatherArray;
//   
//    [weakSelf.tableView reloadData];
//    
//} failureBlock:^(NSError *error) {
//    
//}];
   
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.weatherArray.count;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    weatherCell * cell = (weatherCell *)[tableView dequeueReusableCellWithIdentifier:@"weathercell" ];
    [cell configureCellWithWeather:self.weatherArray[indexPath.row]];
    return cell;
   
}

@end
