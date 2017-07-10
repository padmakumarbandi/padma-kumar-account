//
//  GroceriesListItems.m
//  GroceriesStoreApp
//
//  Created by Prahlad on 6/21/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "GroceriesListItems.h"
#import <UIKit/UIKit.h>
@implementation GroceriesListItems
-(instancetype)initWithitemName:(NSString*)itemName
                  itemImageName:(UIImage*) itemImageName
                itemDescription:(NSString*)itemDescription
                  itemSubString:(NSString*)itemSubString{
    self=[super init];
    if (self) {
        _itemName =itemName;
        _itemImageName = itemImageName;
        _itemDescription = itemDescription;
        _itemSubString = itemSubString;
    }return self;
        
    
}
@end
