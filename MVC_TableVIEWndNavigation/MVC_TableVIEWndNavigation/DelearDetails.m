//
//  DelearDetails.m
//  MVC_TableVIEWndNavigation
//
//  Created by Prahlad on 6/17/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "DelearDetails.h"

@implementation DelearDetails



-(instancetype)initWithName: (NSString*)Namefrnd
             reference_info: (NSArray*)referencearraycarinfo
               contact_info:(Contactinfo*) contactinfo{
    self = [super init];
    if (self) {
        self.Name = Namefrnd;
        _referencecarinfo = referencearraycarinfo;
        _contact_info = contactinfo;
        
        
        
    }
    return self;
}

@end
