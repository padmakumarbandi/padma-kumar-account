//
//  Snacks.m
//  GroceriesStorePaddu
//
//  Created by Prahlad on 6/21/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "Snacks.h"

@implementation Snacks
-(instancetype) initWithsn_name:(NSString *)sn_name
                        sn_des : (NSString *)sn_des
                         sn_pic: (UIImage *)sn_pic{
    
    self =[super init];
    if (self ==0) {
        
        _sn_name=sn_name;
        _sn_des=sn_des;
        _sn_pic=sn_pic;
    } return self;
    
    
}
@end
