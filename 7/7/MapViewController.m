//
//  MapViewController.m
//  7
//
//  Created by IOS DEVELOPER on 7/22/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "MapViewController.h"
#import "location.h"
#import "LocationObject.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(15.505723, 80.049919);
    //    region1.span= span1;
    //    region1.center = coordinate;
    
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc]init];
    annotation.coordinate = coordinate;
    annotation.title = @"Ongole";
    
    [self.mapView addAnnotation:annotation];
    //    [self.Mapview setRegion:region1 animated:YES];
    [self.mapView setCenterCoordinate:coordinate];
    // Do any additional setup after loading the view.
    MKCoordinateRegion coordRegin1 =  MKCoordinateRegionMakeWithDistance(coordinate, 750, 1000) ;
    
    [self.mapView setRegion:coordRegin1 animated:YES];
}
-(void) viewDidAppear:(BOOL)animated{
    
//    LocationObject * modelnaem =[[LocationObject alloc]init];
//    location *some =[modelnaem someObjectName];
//    
//    
//    CLLocationCoordinate2D someplaceCoordinate;
//    someplaceCoordinate.longitude = some.longitude;
//    someplaceCoordinate.latitude = some.latittude;
//
//   MKCoordinateRegion coordRegin1 =  MKCoordinateRegionMakeWithDistance(someplaceCoordinate, 750, 1000) ;
//
//    [self.mapView setRegion:coordRegin1 animated:YES];
//    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
