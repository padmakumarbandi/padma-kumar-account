//
//  Stores.m
//  GroceriesStorePaddu
//
//  Created by Prahlad on 6/21/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "Stores.h"
#import "Spices.h"
#import"Diary.h"
#import "Snacks.h"
#import "Drinks.h"
#import <Foundation/Foundation.h>

@implementation Stores
-(NSArray*) StoresObjects{
    
    if (self.NoOfStores > 0) {
        return self.NoOfStores;
    }
        Spices * Sp1 = [[Spices alloc]initWithSp_name:@"Chili" Sp_des:@"Chili con carne (Spanish pronunciation: [ˈtʃili koŋ ˈkaɾne]; English: chili with meat), commonly known in American English as simply , is a spicy stew containing chili peppers, meat (usually beef), and often tomatoes and beans. Other seasonings may include garlic, onions, and cumin" Sp_pic:[UIImage imageNamed: @"chili.jpg"]];
      Diary * di1 = [[Diary alloc]initWithdi_name:@"milk" di_des:@"" di_pic:[UIImage imageNamed: @"chili.jpg"]];
        
    Snacks *sn1 = [[Snacks alloc] initWithsn_name:@"chips" sn_des:@"" sn_pic:[UIImage imageNamed: @"chili.jpg"]];

    Drinks *dri1 = [[Drinks alloc]initWithdr_name:@"pepsi" dr_des:@"" dr_pic:[UIImage imageNamed: @"chili.jpg"]];
    self.NoOfStores =@[di1, sn1, dri1, Sp1];
    return self.NoOfStores;
    NSLog(@"%@",self.NoOfStores);
}

    @end

