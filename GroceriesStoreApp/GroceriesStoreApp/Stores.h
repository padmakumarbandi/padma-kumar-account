//
//  Strores.h
//  GroceriesStoreApp
//
//  Created by Prahlad on 6/21/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GroceriesListItems.h"
#import "GroceriesList.h"
@interface Stores : NSObject

@property(strong,nonatomic) NSArray * NoOfStores;



-(NSArray *)StoresObjects;

-(NSString *) checkItem;
-(NSString *) checkItem1;
-(NSString *) checkItem2;
-(NSString *) checkItem

@end
