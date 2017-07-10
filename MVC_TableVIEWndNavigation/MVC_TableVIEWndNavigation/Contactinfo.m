//
//  Contactinfo.m
//  MVC_TableVIEWndNavigation
//
//  Created by Prahlad on 6/17/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "Contactinfo.h"

@implementation Contactinfo

-(instancetype) initWithlocation:(NSString *)location
                       contactno:(NSString *)contactno
                         emailid:(NSString *)emailid
                         details:(NSString *)details {
    self = [super init];
    if (self) {
        _location = location;
        _contactno = contactno;
        _emailid = emailid;
        _details = details;
        
    }return self;
    
}

@end
