//
//  Drinks.m
//  GroceriesStorePaddu
//
//  Created by Prahlad on 6/21/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "Drinks.h"

@implementation Drinks
-(instancetype) initWithdr_name:(NSString *)dr_name
                        dr_des : (NSString *)dr_des
                         dr_pic: (UIImage *)dr_pic{
    
    self =[super init];
    if (self ==0) {
        
        _dr_name =dr_name;
        _dr_des =dr_des;
        _dr_pic =dr_pic;
    } return self;
    
    
}
@end
