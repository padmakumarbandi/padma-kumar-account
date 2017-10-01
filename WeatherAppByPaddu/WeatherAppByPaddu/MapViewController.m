//
//  MapViewController.m
//  WeatherAppByPaddu
//
//  Created by IOS DEVELOPER on 7/19/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "MapViewController.h"
#import "ViewController.h"
@interface MapViewController ()<CLLocationManagerDelegate, MKMapViewDelegate>
@property (strong, nonatomic) IBOutlet MKMapView *MapViewCOntroler;
@property(nonatomic, strong) CLLocationManager *manager;
@property (nonatomic, strong) MKPointAnnotation * annotation;
@property(strong, nonatomic) CLPlacemark * placeMark;
@property(assign, nonatomic)CLLocationCoordinate2D updatedLocationCoordinate;
@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.manager = [[CLLocationManager alloc]init];
        self.manager.delegate=self;
    [self.manager requestWhenInUseAuthorization ];
//    [self.manager startUpdatingLocation];

    [self.manager startMonitoringSignificantLocationChanges];
//    CLLocationCoordinate2D coordinates = CLLocationCoordinate2DMake(40.68, - 74.04);
//    MKPointAnnotation * annotation = [[MKPointAnnotation alloc]init];
//    annotation.coordinate = coordinates;
//    [self.MapViewCOntroler addAnnotation:annotation];
//
//    
//    we just declared the small kind of projects and;
    
}
- (void)locationManager:(CLLocationManager *)manager
     didUpdateLocations:(NSArray<CLLocation *> *)locations{
    
    if(!self.placeMark){
        [self.MapViewCOntroler removeAnnotation:self.annotation];
        CLLocation *updatedlocation = [locations lastObject];
         self.updatedLocationCoordinate = updatedlocation.coordinate;
        __weak __typeof(self) weakSelf = self;
        CLGeocoder *gecoder1 = [[CLGeocoder alloc]init];
        [gecoder1 reverseGeocodeLocation:updatedlocation completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
            NSLog(@"%@",placemarks);
            
            
            
            weakSelf.placeMark = [placemarks lastObject];
            weakSelf.annotation.title = weakSelf.placeMark.locality;
            weakSelf.annotation.subtitle= weakSelf.placeMark.country;
            
            
            weakSelf.annotation = [[MKPointAnnotation alloc] init];
            weakSelf.annotation.coordinate = self.updatedLocationCoordinate;
            [weakSelf.MapViewCOntroler addAnnotation:weakSelf.annotation];
        }];
        
        
        
        
        
        
        //        CLLocationCoordinate2D coordinates = CLLocationCoordinate2DMake(40.68, - 74.04);
        //        MKPointAnnotation * annotation = [[MKPointAnnotation alloc]init];
        //        annotation.coordinate = coordinates;
        //        [self.MapViewCOntroler addAnnotation: annotation];
       
    }

        
    }
    
-(void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view{
    
    UIStoryboard * storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    vc.coordinates =self.updatedLocationCoordinate;
    [self.navigationController pushViewController:vc animated:YES];
    
    
    
}






@end
