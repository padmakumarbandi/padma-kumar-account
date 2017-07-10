//
//  Spices.h
//  GroceriesStorePaddu
//
//  Created by Prahlad on 6/21/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>
@interface Spices : NSObject
@property(strong,nonatomic) NSString * Sp_name;
@property(strong, nonatomic)NSString * Sp_des;
@property(strong, nonatomic)NSString * Sp_pic;


-(instancetype) initWithSp_name:(NSString *)Sp_name
                        Sp_des : (NSString *)Sp_des
                         Sp_pic: (UIImage *)Sp_pic;

@end
