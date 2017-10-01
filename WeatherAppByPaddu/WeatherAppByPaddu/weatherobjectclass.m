 //
//  weatherobjectclass.m
//  WeatherAppByPaddu
//
//  Created by IOS DEVELOPER on 7/16/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "weatherobjectclass.h"
#import "weatherBuilder.h"
#import "temps.h"
#import "weatherBuilder.h"

#import "WeatherNetworkManaging.h"
@implementation weatherobjectclass

//+(void)buildWeatheObjectsWithSuccessBlock :(void (^) (NSArray *))succesBlock
//                              failureBlock:(void (^)(NSError * error)) failureblock{
//    
//    
//    
//    [WeatherNetworkManaging getFIveDayForecastForCity:@""
//                                         successBlock:^(NSDictionary *Dictionary) {
//                                             
//                                             NSMutableArray *weatherArray = [NSMutableArray array];
//                                             
//                                             dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//                                                 
//                                                 NSArray*listarray = Dictionary[@"list"];
//                                                 //                                              NSLog(@"%@",listarray);
//                                                 for (NSDictionary* dictionary in listarray){
//                                                     NSString * currentemp= [NSString stringWithFormat:@"%.2f",[dictionary[@"main"][@"temp"]floatValue]- 273.15];
//                                                     NSString * miniemp= [NSString stringWithFormat:@"%.2f",[dictionary[@"main"][@"temp_max"]floatValue]- 273.15];
//                                                     NSString * maxtemp= [NSString stringWithFormat:@"%.2f",[dictionary[@"main"][@"temp_min"]floatValue]- 273.15] ;
//                                                     NSString * weather= dictionary[@"weather"][0][@"description"];
//                                                     NSString * weatherid= dictionary[@"weather"][0][@"id"];
////                                                     NSLog(@"...........:%@,/////////%@,<<<<<<<<%@", currentemp, maxtemp, miniemp);
//                                                     temps * temp1 = [[temps alloc]initWithcurrenttemp:currentemp minitemp:miniemp maxitmep:maxtemp];
//                                                     weatherBuilder * weat = [[weatherBuilder alloc]initWithweatherdescription:weather iconid:weatherid temperature:temp1];
////                                                     NSLog(@"%@,", weat);
////                                                     [weatherArray addObjects: weat];
//                                                   
//                                                     
////                                                     NSURL *url = [NSURL URLWithString:@"http://openweathermap.org/img/w/10d.png"];
////                                                     weather= [UIImage imageWithData:[NSData dataWithContentsOfURL:url]];
////                                                     
////                                                     //        __weak __typeof(self) weakSelf = self;
////                                                     dispatch_async(dispatch_get_main_queue(), ^{
////                                                          [weatherArray addObject:weat];
////                                                     });
//                                                     
//                                                 }
//                                                 
//                                                 dispatch_async(dispatch_get_main_queue(), ^{
//                                                     succesBlock(weatherArray);
//                                                     
//                                                 });
//                                             });
//                                             
//    } failureBlock:^(NSError *error) {
//        NSLog(@"errror: %@",[error description]);
//    }];
//



                                                          

+ (void)buildWeatheObjectsForCoordinates :(CLLocationCoordinate2D)coordinates
successblock:(void (^) (NSArray *))succesBlock
failureBlock:(void (^)(NSError * error)) failureblock{
    

    [WeatherNetworkManaging getFIveDayForecastForCOordinates:coordinates
                                         successBlock:^(NSDictionary *Dictionary) {
                                             
                                             NSMutableArray *weatherArray = [NSMutableArray array];
                                             
                                             dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
                                                 
                                                 NSArray*listarray = Dictionary[@"list"];
                                                 //                                              NSLog(@"%@",listarray);
                                                 for (NSDictionary* dictionary in listarray){
                                                     NSString * currentemp= [NSString stringWithFormat:@"%.2f",[dictionary[@"main"][@"temp"]floatValue]- 273.15];
                                                     NSString * miniemp= [NSString stringWithFormat:@"%.2f",[dictionary[@"main"][@"temp_max"]floatValue]- 273.15];
                                                     NSString * maxtemp= [NSString stringWithFormat:@"%.2f",[dictionary[@"main"][@"temp_min"]floatValue]- 273.15] ;
                                                     NSString * weather= dictionary[@"weather"][0][@"description"];
                                                     NSString * weatherid= dictionary[@"weather"][0][@"id"];
                                                     //                                                     NSLog(@"...........:%@,/////////%@,<<<<<<<<%@", currentemp, maxtemp, miniemp);
                                                     temps * temp1 = [[temps alloc]initWithcurrenttemp:currentemp minitemp:miniemp maxitmep:maxtemp];
                                                     weatherBuilder * weat = [[weatherBuilder alloc]initWithweatherdescription:weather iconid:weatherid temperature:temp1];
                                                     //                                                     NSLog(@"%@,", weat);
                                                     //                                                     [weatherArray addObjects: weat];
                                                     
                                                     
                                                     //                                                     NSURL *url = [NSURL URLWithString:@"http://openweathermap.org/img/w/10d.png"];
                                                     //                                                     weather= [UIImage imageWithData:[NSData dataWithContentsOfURL:url]];
                                                     //
                                                     //                                                     //        __weak __typeof(self) weakSelf = self;
                                                     //                                                     dispatch_async(dispatch_get_main_queue(), ^{
                                                     //                                                          [weatherArray addObject:weat];
                                                     //                                                     });
                                                     
                                                 }
                                                 
                                                 dispatch_async(dispatch_get_main_queue(), ^{
                                                     succesBlock(weatherArray);
                                                     
                                                 });
                                             });
                                             
                                         } failureBlock:^(NSError *error) {
                                             NSLog(@"errror: %@",[error description]);
                                         }];

}


@end
