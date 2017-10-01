//
//  Dicerequirements.m
//  DiceApp
//
//  Created by IOS DEVELOPER on 7/23/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "Dicerequirements.h"

@implementation Dicerequirements
-(int)getDieNumbervalue {
   
    int x = (arc4random() %6) +1;
    
    return x;
    
    
}
@end
