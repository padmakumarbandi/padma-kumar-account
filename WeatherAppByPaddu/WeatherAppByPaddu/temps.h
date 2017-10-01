//
//  temps.h
//  WeatherAppByPaddu
//
//  Created by IOS DEVELOPER on 7/16/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface temps : NSObject
@property(nonatomic,strong)NSString *currenttemp;
@property(nonatomic,strong)NSString *minitemp;
@property(nonatomic,strong)NSString *maxitemp;


-(instancetype) initWithcurrenttemp :(NSString *) currenttrmp
  minitemp: (NSString *) minitemp
                            maxitmep:(NSString *) maxitemp;

@end
