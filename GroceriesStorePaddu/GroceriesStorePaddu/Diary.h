//
//  Diary.h
//  GroceriesStorePaddu
//
//  Created by Prahlad on 6/21/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Diary : NSObject

@property(strong,nonatomic) NSString * di_name;
@property(strong, nonatomic)NSString * di_des;
@property(strong, nonatomic)NSString * di_pic;


-(instancetype) initWithdi_name:(NSString *)di_name
                        di_des : (NSString *)di_des
                         di_pic: (UIImage*)di_pic;


@end
