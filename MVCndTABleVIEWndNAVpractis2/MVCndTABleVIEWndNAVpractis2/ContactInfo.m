
//
//  ContactInfo.m
//  MVCndTABleVIEWndNAVpractis2
//
//  Created by Prahlad on 6/20/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "ContactInfo.h"

@implementation ContactInfo
-(instancetype) initWithlocation:(NSString *)location
                       contactNumber:(NSString *)contactNumber
                         emailid:(NSString *)emailid
                        WebsiteUrl:(NSString *)WebsiteUrl {
    self = [super init];
    if (self) {
        _location = location;
        _contactNumber = contactNumber;
        _emailid = emailid;
        _WebsiteUrl = WebsiteUrl;
        
    }return self;
    
}

@end
