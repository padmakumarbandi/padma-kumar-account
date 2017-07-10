 //
//  DealerBuilder.m
//  MVCndTABleVIEWndNAVpractis2
//
//  Created by Prahlad on 6/20/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "DealerBuilder.h"

@implementation DealerBuilder

-(NSArray*) dealerbuilderObjects{
    
    if (self.Dealers > 0) {
        return self.Dealers;
        
    }
    Car *Bmw =[[Car alloc]initWithmake:@"black" color:@"black" year:@"2018"
                                   info:@"brandnew" photo:[UIImage imageNamed: @"green.jpg"]];
    Car *Audi =[[Car alloc]initWithmake:@"black" color:@"black" year:@"2018"
                                   info:@"brandnew" photo:[UIImage imageNamed: @"green.jpg"]];
    Car *car3 =[[Car alloc]initWithmake:@"black" color:@"black" year:@"2018"
                                   info:@"brandnew" photo:[UIImage imageNamed: @"green.jpg"]];
    Car *car4 =[[Car alloc]initWithmake:@"black" color:@"black" year:@"2018"
                                   info:@"brandnew" photo:[UIImage imageNamed: @"green.jpg"]];
    Car *car5 =[[Car alloc]initWithmake:@"black" color:@"black" year:@"2018"
                                   info:@"brandnew" photo:[UIImage imageNamed: @"green.jpg"]];
    
    
    ContactInfo *info1 = [[ContactInfo alloc]initWithlocation:@"newYork" contactNumber:@"122333" emailid:@"pk.com" WebsiteUrl:@"www.google.com"] ;
    
    ContactInfo *info2 = [[ContactInfo alloc]initWithlocation:@"kent"
                                                    contactNumber:@"987-574-32"
                                                      emailid:@"1378499"
                                                      WebsiteUrl:@""] ;
    ContactInfo *inf3 = [[ContactInfo alloc]initWithlocation:@"kent"
                                                   contactNumber:@"987-574-32"
                                                     emailid:@"1378499"
                                                    WebsiteUrl:@"kbioik"] ;
   

    Dealer *details1 =[[ Dealer alloc]initWithName:@"apple"
                                              cars:@[Bmw, Audi,car3,car4] contactinfo:info1];
    Dealer *details2 =[[ Dealer alloc]initWithName:@"appmkle"
                                              cars:@[Bmw, Audi,car3,car4] contactinfo:inf3];

    Dealer *details3 =[[ Dealer alloc]initWithName:@"apmmple"
                                              cars:@[Bmw, Audi,car3,car4,car5] contactinfo: info2];

    Dealer *details4 =[[ Dealer alloc]initWithName:@"appmle"
                                              cars:@[Bmw, Audi,car3,car4] contactinfo: info1];
    self.Dealers= @[details1,details2,details3,details4];
    return self.Dealers;
}

@end

