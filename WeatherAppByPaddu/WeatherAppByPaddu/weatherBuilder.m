//
//  weatherBuilder.m
//  WeatherAppByPaddu
//
//  Created by IOS DEVELOPER on 7/16/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "weatherBuilder.h"

@implementation weatherBuilder
-(instancetype)initWithweatherdescription:(NSString *) weatherdescription
                                   iconid:(NSString *) iconid
                 temperature:(temps *) temperature{
    
    
    self = [super init];
    if (self) {
        
        _weatherdescription = weatherdescription;
        _iconid = iconid;
        _temperature = temperature;
        
    }
    return self;
}

@end

