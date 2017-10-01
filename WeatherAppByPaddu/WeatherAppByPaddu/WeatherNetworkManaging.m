//
//  WeatherNetworkManaging.m
//  WeatherAppByPaddu
//
//  Created by IOS DEVELOPER on 7/15/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "WeatherNetworkManaging.h"
#import <CoreLocation/CoreLocation.h>
//static NSString * apikey = @"a16b319d6bced7977adc40f0b9df4ee5";
//static NSString * baseURL = @"http://samples.openweathermap.org/data/2.5/forecast?id=524901&appid=b1b15e88fa797225412429c1c50c122a1";
static NSString * baseURL = @"http://samples.openweathermap.org/data/2.5/weather?lat=%f&lon=%f&appid=b1b15e88fa797225412429c1c50c122a1";
@implementation WeatherNetworkManaging
//+(void) getFIveDayForecastForCity:(NSString *)city
//                     successBlock:(void (^)(NSDictionary * Dictionary))successBlock
//                     failureBlock:(void (^)(NSError *error))failureBlock{
//   /* To Make a request
//    first create some Url
//    2 using URL we make URl request........mnd congifuge
//    
//    3 Using URL Request, We Connect it to the NSUrlSessionClass.
//    see example way
//    */
//    NSLog(@"printing req std");
//    NSURL * url = [NSURL URLWithString:baseURL];
//    NSURLRequest * request = [ NSURLRequest requestWithURL:url];
//    NSURLSessionConfiguration * configure = [NSURLSessionConfiguration defaultSessionConfiguration];
//    NSURLSession *session1 = [NSURLSession sessionWithConfiguration: configure];
//   NSURLSessionDataTask * task1 = [session1 dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//       
//       if (data)
//                  {
//                      NSJSONSerialization * jasonSerialization =[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
//                      NSLog(@"json: %@",jasonSerialization);
//                  }
//                  else if (error){
//           
//           
//                NSLog(@"errror: %@",[error description]);
//                  }
//
////                NSLog(@"printing req end: %@", data );
//        NSLog(@"printing req end");
//       
//}];
//    NSLog(@"printing methd end");
//    [task1 resume];
//}

+(void) getFIveDayForecastForCOordinates:(CLLocationCoordinate2D)coordinates
                            successBlock:(void (^)(NSDictionary * Dictionary))successBlock
                            failureBlock:(void (^)(NSError *error))failureBlock{
    /* To Make a request
     first create some Url
     2 using URL we make URl request........mnd congifuge
     
     3 Using URL Request, We Connect it to the NSUrlSessionClass.
     see example way
     */
    
    NSString * finalUrl = [baseURL stringByReplacingOccurrencesOfString:@"lat = %f" withString:[NSString stringWithFormat:@"lat = %f",coordinates.latitude]];
    finalUrl = [finalUrl stringByReplacingOccurrencesOfString:@"lat = %f" withString:[NSString stringWithFormat:@"long = %f",coordinates.longitude]];
    NSLog(@"printing req std");
    NSURL * url = [NSURL URLWithString:baseURL];
    NSURLRequest * request = [ NSURLRequest requestWithURL:url];
    NSURLSessionConfiguration * configure = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session1 = [NSURLSession sessionWithConfiguration: configure];
    NSURLSessionDataTask * task1 = [session1 dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (data)
        {
            NSJSONSerialization * jasonSerialization =[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
            NSLog(@"json: %@",jasonSerialization);
        }
        else if (error){
            
            
            NSLog(@"errror: %@",[error description]);
        }
        
        //                NSLog(@"printing req end: %@", data );
        NSLog(@"printing req end");
        
    }];
    NSLog(@"printing methd end");
    [task1 resume];
}





@end
