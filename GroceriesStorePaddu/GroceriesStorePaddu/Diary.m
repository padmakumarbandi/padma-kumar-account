//
//  Diary.m
//  GroceriesStorePaddu
//
//  Created by Prahlad on 6/21/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "Diary.h"

@implementation Diary

-(instancetype) initWithdi_name:(NSString *)di_name
                        di_des : (NSString *)di_des
                         di_pic: (UIImage *)di_pic{
    
    self =[super init];
    if (self ==0) {
        
        _di_name=di_name;
        _di_des=di_des;
        _di_pic=di_pic;
    } return self;
    
    
}
@end
