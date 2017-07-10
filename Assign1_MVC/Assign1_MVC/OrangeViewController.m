//
//  OrangeViewController.m
//  Assign1_MVC
//
//  Created by Prahlad on 6/16/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "OrangeViewController.h"
#import "OrangeViewController.h"
#import "YellowViewController.h"
@interface OrangeViewController ()

@end

@implementation OrangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title =@"Orange vc";
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blueColor]}];
    
    
    UIBarButtonItem * rightDoneButton = [[UIBarButtonItem alloc ] initWithTitle:@"done Or yellow close" style:UIBarButtonItemStylePlain target:self action:@selector(rightDoneButtonPressed)];
    
    self.navigationItem.rightBarButtonItem =rightDoneButton;
}
-(void)rightDoneButtonPressed{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    //    OrangeViewController * Gcvc = [[ OrangeViewController alloc] init];
    //
    YellowViewController * Ocvcstoyboard = [ storyboard instantiateViewControllerWithIdentifier:@"YellowViewController"];
    
    NSLog(@"rightDoneButtion");
    [self.navigationController pushViewController:Ocvcstoyboard animated:YES];
    
}


@end
