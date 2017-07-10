//
//  ViewController.m
//  GroceriessListMakingApp
//
//  Created by Prahlad on 6/29/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "GLViewController.h"
#import "AdGcViewController.h"
@interface GLViewController ()<GroceriesListdetailprtcl>
@property(nonatomic,strong)NSMutableArray * GroceriesArraylist;
@property (strong, nonatomic) IBOutlet UITableView *tableViewoutlet;

@end

@implementation GLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.GroceriesArraylist =[NSMutableArray array];
[self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]}];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.GroceriesArraylist.count ==0 ? 1 : self.GroceriesArraylist.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
    if (self.GroceriesArraylist.count>0) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"GcCell"];
        GroceriesList *gc =self.GroceriesArraylist[indexPath.row];
        cell.textLabel.text = [NSString stringWithFormat:@"%@--%ld", gc.Name,gc.quantity];
        cell.textLabel.text = @"apple";
    }
    else{
        cell =[tableView dequeueReusableCellWithIdentifier:@"NOGcCell"];
        
    }
////    = [tableView dequeueReusableCellWithIdentifier: @"GcCell"];
//      cell.textLabel.text = @"apple";
//                         return cell;
    return cell;
    
}


- (IBAction)Sharebutnprsd:(id)sender {
//    UIImage *image = [UIImage imageNamed:@"three"];
    NSString * sharemsg=[self generateStringToShareFromGrocerriesList];
   NSArray *Array1 = @[sharemsg];
    
//    // build an activity view controller
//    UIActivityViewController *controller = [[UIActivityViewController alloc]initWithActivityItems:items applicationActivities:nil];
    UIActivityViewController * sharebutn = [[UIActivityViewController alloc]initWithActivityItems:Array1 applicationActivities:nil];
    
    // and present it
    [self presentViewController:sharebutn animated:YES completion:nil];
        // executes after the user selects something
}
//this two are must in this.........

    - (id)activityViewController:(UIActivityViewController *)activityViewController
itemForActivityType:(NSString *)activityType
    {
         NSString * sharemsg=[self generateStringToShareFromGrocerriesList];
        if ([activityType isEqualToString:UIActivityTypeMessage]) {
            return sharemsg;
        } else if ([activityType isEqualToString:UIActivityTypeMail]) {
            return @"Apple 2lb, vegies---> 4lb";
        } else {
            return nil;
        }
      
        /* if ([activityType isEqualToString:UIActivityTypeMessage]||([activityType isEqualToString:UIActivityTypeMail])) {
         return sharemsg;
       }else{
            
         return nil;
         }
         
*/
    }
-(NSString *) generateStringToShareFromGrocerriesList{
    return @"";
    
}
- (id)activityViewControllerPlaceholderItem:(UIActivityViewController *)activityViewController{
    

return @"";
}
-(void)AddNewGrocerry:(GroceriesList *)grocerry destinatinViewController:(UIViewController *)ViewController{
    [self.GroceriesArraylist addObject:grocerry];
    [self.tableViewoutlet reloadData];
    NSLog(@"XXXXXX%@", grocerry);
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"Addseg"])
    {
        UINavigationController *ngVC = (UINavigationController *)segue.destinationViewController;
        AdGcViewController *gcVC = (AdGcViewController *)ngVC.topViewController;
        gcVC.delegate = self;
    }
}
@end
