//
//  GroceriesListItems.h
//  GroceriesStoreApp
//
//  Created by Prahlad on 6/21/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "GroceriesList.h"
@interface GroceriesListItems : NSObject
@property (nonatomic, strong)NSString  *itemName;
@property (nonatomic, strong)NSString *itemImageName;
@property (nonatomic, strong)NSString *itemDescription;
@property (nonatomic, strong)GroceriesList *itemSubString;

-(instancetype)initWithitemName:(NSString*)itemName
                  itemImageName:(UIImage*) itemImageName
                itemDescription:(NSString*)itemDescription
itemSubString:(NSString*)itemSubString;

@end
