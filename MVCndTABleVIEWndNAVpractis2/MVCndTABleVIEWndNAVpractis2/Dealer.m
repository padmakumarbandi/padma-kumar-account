 //
//  Dealer.m
//  MVCndTABleVIEWndNAVpractis2
//
//  Created by Prahlad on 6/20/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "Dealer.h"


@implementation Dealer



-(instancetype)initWithName: (NSString*)Name
                       cars: (NSArray*)cars
                contactinfo:(NSString*) contactinfo{
    

    self = [super init];
    if (self) {
        self.Name = Name;
        _cars = cars;
        _contactinfo = contactinfo;
        
    }
    return self;




}
    @end

