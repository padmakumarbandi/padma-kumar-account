//
//  GroceriesList.h
//  GroceriessListMakingApp
//
//  Created by Prahlad on 7/2/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GroceriesList : NSObject
@property(strong,nonatomic, readonly) NSString* Name;
@property(nonatomic,assign, readonly)NSInteger * quantity;
-(instancetype)initWithName :(NSString *) Name
                   quantity :(NSInteger *) quantity;


@end
