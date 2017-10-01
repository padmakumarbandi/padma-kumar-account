//
//  temps.m
//  WeatherAppByPaddu
//
//  Created by IOS DEVELOPER on 7/16/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "temps.h"

@implementation temps

-(instancetype) initWithcurrenttemp :(NSString *) currenttrmp
                            minitemp: (NSString *) minitemp
                            maxitmep:(NSString *) maxitemp{
    self = [super init];
    if (self) {
        _currenttemp = currenttrmp;
        _maxitemp= maxitemp;
        _minitemp=minitemp;
        
    }
    return self;
}
@end
