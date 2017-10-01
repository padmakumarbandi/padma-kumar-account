//
//  weatherobjectclass.h
//  WeatherAppByPaddu
//
//  Created by IOS DEVELOPER on 7/16/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import<UIKit/UIKit.h>
#import"WeatherNetworkManaging.h"
#import <CoreLocation/CoreLocation.h>
@interface weatherobjectclass : NSObject
//+(void)buildWeatheObjectsWithSuccessBlock :(void (^) (NSArray *))succesBlock
//                              failureBlock:(void (^)(NSError * error)) failureblock;
//+(void)buildWeatheObjectsForSuccessBlock :(void (^) (NSArray *))succesBlock
//                              failureBlock:(void (^)(NSError * error)) failureblock;
//+(void)buildWeatheObjectsForCoordinates :(void (^) (NSArray *))succesBlock
//                            failureBlock:(void (^)(NSError * error)) failureblock;
+(void)buildWeatheObjectsForCoordinates :(CLLocationCoordinate2D)coordinates
                            successblock:(void (^) (NSArray *))succesBlock
                            failureBlock:(void (^)(NSError * error)) failureblock;


@end
