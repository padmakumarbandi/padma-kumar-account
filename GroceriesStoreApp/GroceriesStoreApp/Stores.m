//
//  Strores.m
//  GroceriesStoreApp
//
//  Created by Prahlad on 6/21/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "Stores.h"


@implementation Stores

-(NSArray*) StoresObjects{
    
    if (self.NoOfStores > 0) {
        return self.NoOfStores;
    }

-(NSString *) checkItem{
        
        NSMutableArray *groceryArray = [[NSMutableArray alloc] initWithCapacity:3];
        
        if ([_spices isEqualToString: @"0"]) {
            itemName = @"Redchilli";
            itemImageName =@"Redchilli.png";
            
            
            itemDescription = @"The chili pepper is the fruit of plants from the genus Capsicum, members of the nightshade family, Solanaceae. In Australia, Britain, India, Ireland, New Zealand, Pakistan, South Africa and in other Asian countries, it is usually known simply as chilli. ... See also Chili (disambiguation) or Red Chillies (film). Green bird's eyeThe chili pepper is the fruit of plants from the genus Capsicum, members of the nightshade family, Solanaceae. In Australia, Britain, India, Ireland, New Zealand, Pakistan, South Africa and in other Asian countries, it is usually known simply as chilli. ... See also Chili (disambiguation) or Red Chillies (film). Green bird's eye";
            
            [groceryArray addObject:itemName];
            [groceryArray addObject:itemDescription];
            [groceryArray addObject:itemImageName];
            
            
        }
        else if ([_spices isEqualToString: @"1"]) {
            itemName = @"Blackcardamom";
            [groceryArray addObject:itemName];
            [groceryArray addObject:@"Black cardamom is often erroneously[2] described as an inferior substitute for green cardamom by those unfamiliar with the spice; actually, it is just not as well suited for the sweet/hot dishes which typically include cardamom, and that are more commonly prepared outside the plant's native range. Black cardamom is often erroneously[2] described as an inferior substitute for green cardamom by those unfamiliar with the spice; actually, it is just not as well suited for the sweet/hot dishes which typically include cardamom, and that are more commonly prepared outside the plant's native range"];
            [groceryArray addObject:@"Blackcardamom.png"];
        }
        else if ([_spices isEqualToString: @"2"]) {
            itemName = @"Blackpepper";
            [groceryArray addObject:itemName];
            [groceryArray addObject:@"Black pepper (Piper nigrum) is a flowering vine in the family Piperaceae, cultivated for its fruit, which is usually dried and used as a spice and seasoning. When dried, the fruit is known as a peppercorn. When fresh and fully mature, it is approximately 5 millimetres (0.20 in) in diameter, dark red, and, like all drupes, contains a single seed.Black pepper (Piper nigrum) is a flowering vine in the family Piperaceae, cultivated for its fruit, which is usually dried and used as a spice and seasoning. When dried, the fruit is known as a peppercorn. When fresh and fully mature, it is approximately 5 millimetres (0.20 in) in diameter, dark red, and, like all drupes, contains a single seed."];
            [groceryArray addObject:@"Blackpepper.png"];
        }
        else if ([_spices isEqualToString: @"3"]) {
            itemName = @"Peppercorns";
            [groceryArray addObject:itemName];
            [groceryArray addObject:@"it is peppercorns"];
            [groceryArray addObject:@"Peppercorns.png"];
        }
        else if ([_spices isEqualToString: @"4"]) {
            itemName = @"Capsicum";
            [groceryArray addObject:itemName];
            [groceryArray addObject:@"capsicum is mainly consumed in Asia countries"];
            [groceryArray addObject:@"Capsicum.png"];
        }
        
        return groceryArray;
    }

}

@end
