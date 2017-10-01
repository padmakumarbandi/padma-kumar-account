//
//  weatherBuilder.h
//  WeatherAppByPaddu
//
//  Created by IOS DEVELOPER on 7/16/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "temps.h"
@interface weatherBuilder : NSObject
@property(nonatomic,strong)NSString *weatherdescription;
@property(nonatomic,strong)NSString *iconid;
@property(nonatomic,strong)temps * temperature;
;
-(instancetype)initWithweatherdescription:(NSString *) weatherdescription
                                   iconid:(NSString *) iconid
                              temperature:(temps *) temperature;

@end
