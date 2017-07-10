//
//  Snacks.h
//  GroceriesStorePaddu
//
//  Created by Prahlad on 6/21/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Snacks : NSObject
@property(strong,nonatomic) NSString * sn_name;
@property(strong, nonatomic)NSString * sn_des;
@property(strong, nonatomic)NSString * sn_pic;


-(instancetype) initWithsn_name:(NSString *)sn_name
                        sn_des : (NSString *)sn_des
                         sn_pic: (UIImage *)sn_pic;


@end
