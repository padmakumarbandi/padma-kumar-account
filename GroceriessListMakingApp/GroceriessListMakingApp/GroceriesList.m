//
//  GroceriesList.m
//  GroceriessListMakingApp
//
//  Created by Prahlad on 7/2/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "GroceriesList.h"
@interface GroceriesList ()

@property(strong,nonatomic, readwrite) NSString* Name;
@property(nonatomic,assign,readwrite)NSInteger * quantity;
@end


@implementation GroceriesList
-(instancetype)initWithName :(NSString *) Name
                   quantity :(NSInteger *) quantity{
    self = [super init];
    if (self) {
        _Name = Name;
        _quantity= quantity;
        
    }
    return self;
}
@end
