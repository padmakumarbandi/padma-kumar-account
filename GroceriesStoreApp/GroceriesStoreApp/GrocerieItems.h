//
//  GrocerieItems.h
//  GroceriesStoreApp
//
//  Created by Prahlad on 6/22/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GrocerieItems : NSObject

@property(nonatomic,strong)NSArray *itemlist;
@property(nonatomic,strong)NSString * gcname;
-(instancetype) initWithitemlist:(NSArray*)itemlist
gcname: (NSString*)gcname;


@end
