//
//  GrocerieItems.m
//  GroceriesStoreApp
//
//  Created by Prahlad on 6/22/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "GrocerieItems.h"

@implementation GrocerieItems
-(instancetype) initWithitemlist:(NSArray*)itemlist
                          gcname: (NSString*)gcname{
    self=[super init];
    if (self) {
        _itemlist = itemlist;
        _gcname = gcname;
    }
    return self;
}
@end
