//
//  LocationObject.m
//  7
//
//  Created by IOS DEVELOPER on 7/22/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "LocationObject.h"

@implementation LocationObject
-(location*)someObjectName{
    location * mylocationPlace  = [[location alloc]init];
    mylocationPlace.locationAddress = @"mikes cutting and haircut barber shop";
    mylocationPlace.imageName = @"a";
    mylocationPlace.latittude = 37.25345;
    mylocationPlace.longitude= -127.337647;
    
    
    
    
    return mylocationPlace;
    
}

@end
