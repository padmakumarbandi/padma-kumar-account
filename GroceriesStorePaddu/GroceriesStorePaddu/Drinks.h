//
//  Drinks.h
//  GroceriesStorePaddu
//
//  Created by Prahlad on 6/21/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Drinks : NSObject
@property(strong,nonatomic) NSString * dr_name;
@property(strong, nonatomic)NSString * dr_des;
@property(strong, nonatomic)NSString * dr_pic;


-(instancetype) initWithdr_name:(NSString *)dr_name
                        dr_des : (NSString *)dr_des
                         dr_pic: (UIImage *)dr_pic;

@end
