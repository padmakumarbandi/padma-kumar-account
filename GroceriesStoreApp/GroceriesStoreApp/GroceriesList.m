//
//  GroceriesList.m
//  GroceriesStoreApp
//
//  Created by Prahlad on 6/21/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "GroceriesList.h"

@implementation GroceriesList
-(instancetype) initWithspices:(NSString*)spice diary:(NSString*)diary snak:(NSString*) snak drink:(NSString *)drink{
    self= [super init];
    if (self) {
        _spices =spice;
        _diary= diary;
        _snak=snak;
        _drink=drink;
        
    }
    return self;
}
@end
