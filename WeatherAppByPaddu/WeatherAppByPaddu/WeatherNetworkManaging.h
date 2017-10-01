//
//  WeatherNetworkManaging.h
//  WeatherAppByPaddu
//
//  Created by IOS DEVELOPER on 7/15/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
@interface WeatherNetworkManaging : NSObject


//method
//+(void) getFIveDayForecastForCity:(NSString *)city
//                     successBlock:(void (^)(NSDictionary * Dictionary))successBlock
//failureBlock:(void (^)(NSError *error))failureBlock;
//


+(void) getFIveDayForecastForCOordinates:(CLLocationCoordinate2D)coordinates
                     successBlock:(void (^)(NSDictionary * Dictionary))successBlock
                     failureBlock:(void (^)(NSError *error))failureBlock;



@end
//- (void)someMethodThatTakesABlock:(returnType (^nullability)(parameterTypes))blockName;
