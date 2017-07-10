//
//  GreyViewController.m
//  Assign1_MVC
//
//  Created by Prahlad on 6/15/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "GreyViewController.h"
#import "OrangeViewController.h"
@interface GreyViewController ()

@end

@implementation GreyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title =@"Gcv,,lc";
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    
UIBarButtonItem * rightDoneButton = [[UIBarButtonItem alloc ] initWithTitle:@"done or close" style:UIBarButtonItemStylePlain target:self action:@selector(rightDoneButtonPressed)];
    
    self.navigationItem.rightBarButtonItem =rightDoneButton;
}
-(void)rightDoneButtonPressed{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    OrangeViewController * Gcvc = [[ OrangeViewController alloc] init];
//    
    OrangeViewController * Ocvcstoyboard = [ storyboard instantiateViewControllerWithIdentifier:@"OrangeViewController"];

    NSLog(@"rightDoneButtion");
    [self.navigationController pushViewController:Ocvcstoyboard animated:YES];
    
}











@end
