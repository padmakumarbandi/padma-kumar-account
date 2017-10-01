//
//  ViewController.m
//  7
//
//  Created by IOS DEVELOPER on 7/21/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "ViewController.h"
#import "location.h"
#import "LocationObject.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
           
    

}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    LocationObject * obj1 = [[LocationObject alloc]init];
    location* locvariable= [obj1 someObjectName];
    self.labelAdress.text = locvariable.locationAddress;
    [self.imageView setImage:[UIImage imageNamed:locvariable.imageName]];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
