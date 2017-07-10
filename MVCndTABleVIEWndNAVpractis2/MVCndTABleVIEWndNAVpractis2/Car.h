//
//  Car.h
//  MVCndTABleVIEWndNAVpractis2
//
//  Created by Prahlad on 6/20/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "UIKit/UIKit"
#import <UIKit/UIKit.h>

@interface Car : NSObject



@property(strong,nonatomic) NSString * make;
@property(strong, nonatomic)NSString * Year;
@property(strong, nonatomic)NSString * color;
@property(strong, nonatomic)NSString * photo;

-(instancetype) initWithmake:(NSString *)make
                       color: (NSString *)color
                        year: (NSString *)year
                        info:(NSString *)info
                      photo:(UIImage*) Photo;

@end
