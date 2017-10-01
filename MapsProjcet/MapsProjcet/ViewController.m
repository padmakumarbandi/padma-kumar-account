//
//  ViewController.m
//  MapsProjcet
//
//  Created by Prahlad on 7/6/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "ViewController.h"
#import "MapKit/MapKit.h"
#import "CoreLocation/Corelocation.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [MBProgressHUD showHUDAddedTo:self.view animated:YES]; 
//    MKCoordinateRegion region1;
//    MKCoordinateSpan span1;
//    span1.latitudeDelta = 0.05;
//    span1.longitudeDelta = 0.05;
//    
    
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(15.505723, 80.049919);
//    region1.span= span1;
//    region1.center = coordinate;

    MKPointAnnotation *annotation = [[MKPointAnnotation alloc]init];
    annotation.coordinate = coordinate;
    annotation.title = @"Ongole";
    
    [self.Mapview addAnnotation:annotation];
//    [self.Mapview setRegion:region1 animated:YES];
    [self.Mapview setCenterCoordinate:coordinate];
   }


@end
