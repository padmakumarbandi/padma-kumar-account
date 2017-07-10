//
//  Carsdetails.m
//  MVC_TableVIEWndNavigation
//
//  Created by Prahlad on 6/17/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "Carsdetails.h"

@implementation Carsdetails

-(instancetype)initWithmake:(NSString *)make
                      modelcolor:(NSString *)modelcolor
                       year:(NSString *)year
                       info:(NSString *)info
                     image1:(UIImage *)carimage{
    self =[super init];
    if (self ==0) {
        _make = make;
        _modelcolor = modelcolor;
        _Year = year;
        _info = info;
        _image1= carimage;
        
    } return self;
    
}







@end
