//
//  Car.m
//  MVCndTABleVIEWndNAVpractis2
//
//  Created by Prahlad on 6/20/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "Car.h"
#import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

@implementation Car

-(instancetype)initWithmake:(NSString *)make
                 color:(NSString *)color
                       year:(NSString *)year
                       info:(NSString *)info
                     photo:(UIImage *)Photo{
    
    self =[super init];
    if (self ==0) {
        _make = make;
        _color = color;
        _Year = year;
        info = info;
        _photo= Photo;
        
    } return self;
    
}






@end
