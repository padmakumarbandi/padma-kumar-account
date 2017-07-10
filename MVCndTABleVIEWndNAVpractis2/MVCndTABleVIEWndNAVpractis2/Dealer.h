//
//  Dealer.h
//  MVCndTABleVIEWndNAVpractis2
//
//  Created by Prahlad on 6/20/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContactInfo.h"
@interface Dealer : NSObject


@property(strong,nonatomic) NSString *Name;
@property(strong,nonatomic) NSArray *cars;
@property(strong,nonatomic) ContactInfo *contactinfo;

-(instancetype)initWithName: (NSString*)Name
                       cars: (NSArray*)cars
                contactinfo:(NSString*) contactinfo;


@end
