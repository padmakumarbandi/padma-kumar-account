//
//  Spices.m
//  GroceriesStorePaddu
//
//  Created by Prahlad on 6/21/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "Spices.h"

#import <UIKit/UIKit.h>
@implementation Spices : NSObject


-(instancetype) initWithSp_name:(NSString *)Sp_name
                        Sp_des : (NSString *)Sp_des
                         Sp_pic: (UIImage *)Sp_pic{
    
    self =[super init];
    if (self ==0) {
       
        _Sp_name=Sp_name;
        _Sp_des=Sp_des;
        _Sp_pic=Sp_pic;
    } return self;
    
    
}

@end

