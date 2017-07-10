//
//  dealerbuilder.m
//  MVC_TableVIEWndNavigation
//
//  Created by Prahlad on 6/17/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "dealerbuilder.h"

@implementation dealerbuilder

-(NSArray*) dealerbuilderObjects{
    
    if (self.listOfDealer > 0) {
        return self.listOfDealer;
        
    }
    Carsdetails *benj =[[Carsdetails alloc]initWithmake:@"benz"
                                             modelcolor:@"black"
                                                   year:@"2018"
                                                   info:@"brandnew"
                                                 image1:[UIImage imageNamed:@"green"]];
    Carsdetails *car2 =[[Carsdetails alloc]initWithmake:@"benz"
                                             modelcolor:@"black"
                                                   year:@"2018"
                                                   info:@"brandnew"
                                                 image1:[UIImage imageNamed:@"green"]];

    Carsdetails *car3 =[[Carsdetails alloc]initWithmake:@"benz"
                                             modelcolor:@"black"
                                                   year:@"2018"
                                                   info:@"brandnew"
                                                 image1:[UIImage imageNamed:@"green"]];
    Carsdetails *car4 =[[Carsdetails alloc]initWithmake:@"benz"
                                             modelcolor:@"black"
                                                   year:@"2018"
                                                   info:@"brandnew"
                                                 image1:[UIImage imageNamed:@"green"]];

    
    Contactinfo *info1 = [[Contactinfo alloc]initWithlocation:@"kent"
                                                    contactno:@"987-574-32"
                                                      emailid:@"1378499"
                                                      details:@""] ;
    
    Contactinfo *info2 = [[Contactinfo alloc]initWithlocation:@"kent"
                                                    contactno:@"987-574-32"
                                                      emailid:@"1378499"
                                                      details:@""] ;
    Contactinfo *inf3 = [[Contactinfo alloc]initWithlocation:@"kent"
                                                    contactno:@"987-574-32"
                                                      emailid:@"1378499"
                                                      details:@""] ;
    Contactinfo *info4 = [[Contactinfo alloc]initWithlocation:@"kent"
                                                    contactno:@"987-574-32"
                                                      emailid:@"1378499"
                                                      details:@""] ;

    DelearDetails *details1 =[[ DelearDetails alloc]initWithName:@"apple"
                                                  reference_info:@[benj]
                                                    contact_info:info1];
    DelearDetails *details2 = [[DelearDetails alloc]initWithName:@"mangocars"

                                           reference_info:@[ benj,car2,car3,car4]
                                               contact_info:info2];
    DelearDetails *details3 = [[DelearDetails alloc]initWithName:@"mangocars"
                               
                                                  reference_info:@[ benj,car2,car3,car4]
                                                    contact_info:inf3];
    DelearDetails *details4 = [[DelearDetails alloc]initWithName:@"mangocars"
                                                                                                     
                                                                                                                        reference_info:@[ benj,car2,car3,car4]
                                                                                                                          contact_info:info4];
    DelearDetails *details5 = [[DelearDetails alloc]initWithName:@"mangocars"
                                                                                                                                                                           
                                                                                                                                                                                              reference_info:@[ benj,car2,car3,car4]
                                                                                                                                                                                                contact_info:info2];
    DelearDetails *details7 = [[DelearDetails alloc]initWithName:@"mangocars"
                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                    reference_info:@[ benj,car2,car3,car4]
                                                                                                                                                                                                                                                                      contact_info:info2];
    
    self.listOfDealer= @[details1,details2,details3,details4,details5,details7];
        return _listOfDealer;
}

@end
