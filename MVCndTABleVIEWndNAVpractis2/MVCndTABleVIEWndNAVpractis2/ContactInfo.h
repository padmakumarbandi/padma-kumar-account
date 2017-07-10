//
//  ContactInfo.h
//  MVCndTABleVIEWndNAVpractis2
//
//  Created by Prahlad on 6/20/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ContactInfo : NSObject


@property( strong,nonatomic) NSString * location;
@property(assign,nonatomic) NSString * contactNumber;
@property( strong,nonatomic) NSString* emailid;
@property(strong,nonatomic) NSString * WebsiteUrl;


-(instancetype) initWithlocation: (NSString*) location
                   contactNumber: (NSString*) contactNumber
                        emailid : (NSString*) emailid
                      WebsiteUrl: (NSString*) WebsiteUrl;



@end
