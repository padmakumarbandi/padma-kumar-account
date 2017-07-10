//
//  main.m
//  PadduOBJctutorial1
//
//  Created by Prahlad on 6/2/17.
//  Copyright © 2017 PK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRansportsystem.h"
#import"subclasoftransportation.h"
#import "TRansportsystem+NEWtravelclasin.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
      TRansportsystem *  Roadways = @(CHAR_BIT);
      NSLog(@"%@", (@"the name of transp:%@",Roadways));
      [Roadways setUses: @"car"];
      NSLog(@"%@", [Roadways uses]);
      TRansportsystem * Airways = [[ TRansportsystem alloc] initWithName:@"aeroplane"];
      NSLog(@"%@", Airways.uses);
      NSLog(@" 120 feet = %2f meters", [Airways sizeInMeters:120]);
      NSLog(@"20 feet = %2f in metters", [Roadways sizeInMeters:20]);
      NSLog(@" 5+10 = %d", [Roadways getSum:5 nextNumber:10]);
//      NSLog(@"%@", Roadways usesFor: @" black");
      
//        // insert code here...
     NSLog(@"Hello  World!");
//        NSString * example = @("padma kumar");
//        NSLog(@" %p");
//        NSLog(@" %c: character of string");
//        NSLog(@"size of string example: is", (unsigned long) [example length]);
//        NSString * pulka = @" hi rA hanumanth how are u";
//        NSLog(@"Size  of string pulka is: %d",(int) [pulka length]);
//        NSLog(@"character of the string position at 10: %c",[pulka characterAtIndex:22]);
//        NSLog(@"%c", [example characterAtIndex:3]);
//        NSLog(@"example and pulka mixing",[example stringByAppendingString:pulka]);
//        NSLog(@" example uper and lowercase", [example uppercaseString]);
//        NSLog(@"Pulka", [pulka lowercaseString]);
//    
//        char * pkname = "padma kumar";
//        NSString * whosname = [NSString stringWithFormat:@"- %s", pkname];
//        BOOL isStringEqual = [pulka isEqualToString:(pkname, example)];
//        printf("are strings are equal : %d\n", isStringEqual);
//        const char * pkconstantsstring = [[whosname uppercaseString]            UTF8String];
//        printf("%s\n", pkconstantsstring);
//        NSString * wholequotes =[pulka stringByAppendingString:whosname];
//        NSRange searchResult = [whosname rangeOfString:@"padma kumar"];
//        if(searchResult.location == NSNotFound)
//        {
//         NSLog(@"print like sring is not found hear");
//        }else {
//            printf("padmakumar is at perticular index %lu and is %lu long\n", searchResult.location, searchResult.length);
//        }
//        NSRange range = NSMakeRange(2, 4);
//        
//        
//        NSMutableString * grocerystores = [NSMutableString stringWithCapacity:25];
//        [grocerystores appendFormat:@"%s", "beams store\n, pks sore\n, raps store"];
//        NSLog(@"store names:%@", grocerystores);
//        [grocerystores deleteCharactersInRange:NSMakeRange(2, 4)];
//        NSLog(@"grocerylist:%@", grocerystores);
//        [grocerystores insertString:@" , racks store" atIndex:18];
//        
//         NSLog(@"store 2 names:%@", grocerystores);
//        [grocerystores replaceCharactersInRange:NSMakeRange(2, 3 ) withString:@"ranges"];
//         NSLog(@"store 3 names:%@", grocerystores);
//        
//        NSArray * paduArray = @[@"house", @"home", @"myHome, apple", @"rome" ];
//        NSLog(@"FIrst : %@", paduArray[1]);
//        NSLog(@"paduarray  means: %@", paduArray);
//        BOOL containsITeminPADUARRAYS = [paduArray containsObject:@"sweet"];
//        NSLog(@"Needssomesweet : %d", containsITeminPADUARRAYS);
//        NSLog(@"no of items in it:%d", (int) [paduArray count]);
//        NSLog(@"total : %d", (int)[paduArray count]);
//        NSLog(@"index of home is at %lu", (unsigned long)[paduArray indexOfObject:@"home"]);
//        NSLog(@"padu aray",paduArray);
//              
//        
//        NSMutableArray * pksMuttableArray = [NSMutableArray arrayWithCapacity:10];
//        [pksMuttableArray addObject:@"padma kumar"];
//        [pksMuttableArray addObject:@"sekhar"];
//        [pksMuttableArray addObject:@"sini"];
//        [pksMuttableArray addObject:@" karthik"];
//        [pksMuttableArray addObject:@"chanti:/n, nani\n , anjini\n"];
//        NSLog(@"full array in pks mutable string: %@", pksMuttableArray);
//        [pksMuttableArray removeObject:@"sini"];
//        NSLog(@"full array in pks mutable string: %@", pksMuttableArray);
//        [pksMuttableArray insertObject:@"rajesh" atIndex:4];
//        NSLog(@"%@", pksMuttableArray);
//        [pksMuttableArray removeObject:0];
//        
//        [pksMuttableArray removeObjectsInArray:paduArray];
//        NSLog(@"%@", paduArray);
//        [pksMuttableArray removeObjectIdenticalTo:@"rajesh"];
//        for ( int i = 0; i<[pksMuttableArray count]; i++)
//            NSLog(@"%@", pksMuttableArray);
//        {
//            
//        }
//
      
      
      subclasoftransportation * onekindoftravel = [[subclasoftransportation alloc] init];
      [onekindoftravel init];

      NSLog(@"%@",[onekindoftravel usesFor: @"highways"]);
//      NSLog(@"Did %@ any one checked the vehicle:%d", onekindoftravel.class, [onekindoftravel checkedByPk]);
//      [onekindoftravel checkedByPk];
//  }
//      float (^getArea) (float height, float width);
//      getArea = (float width, float height)) {
//          return width * height;
      
//      };
//      NSLog(@"Area of 3Width and50 Height", getArea(3, 50));
//      enum Ratings {
//          Poor =1, ok = 2, great =5
//          enum ratings AvatharRating = great;
//          NSLog(@"Avathar%U", AvatharRating0);
          
//      }
    
 }
 return 12;

}
