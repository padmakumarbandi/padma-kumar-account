//
//  GroceriesList.h
//  GroceriesStoreApp
//
//  Created by Prahlad on 6/21/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GroceriesList : NSObject
@property (nonatomic, strong) NSString *spices;
@property (nonatomic, strong) NSString *diary;
@property (nonatomic, strong) NSString *snak;
@property (nonatomic, strong) NSString *drink;

-(instancetype) initWithspices:(NSString*)spice
                         diary:(NSString*)diary
                          snak:(NSString*) snak
                         drink:(NSString *)drink;

@end
