//
//  ViewController.m
//  TablVwClsPractis
//
//  Created by Prahlad on 6/11/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//- (void)viewDidLoad {
//    [super viewDidLoad];
- (void)didReceiveMemoryWarning {
     [super didReceiveMemoryWarning];
    //
self.Itemslist = @[@"padmakumar",@"ravi", @"Hanu", @"kalyan", @"venkatesh", @"Vijy", @"vamsi",];
    - (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
        return 4;
    }
    - (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
      {
          if (section ==0){
              return.self.Itemslist.ItemCount;
          }
    
        return self.Itemslist.count;
    }
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//UITableViewCell * cell = [UITableViewCell alloc]initWithStyle: UITableViewCellStyleValue1  reuseIdentifier:@"simpleIdentifier"];
//        cell.UITextFieldLabel.text = self.names [indexPath.row];
        return cell;
        -[(NSArray *)sectionIndexTitlesForTableView: (UITableView *)tableView{
            return @[@"A",@"B"];
        }
-  (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
NSString *tittle = [NSString stringWithFormat:@"section- %ld", section;
return tittle;
}
                    
-(nullable NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
NSString *tittle = [NSString stringWithFormat:@"section- %ld", section;
return tittle;
}
      
                    
        
        
    }
    
    }


//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    
//}


@end
