//
//  GroceriesListdetailprtcl.h
//  GroceriessListMakingApp
//
//  Created by Prahlad on 7/3/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import<UIKit/UIKit.h>
#import"GroceriesList.h"

@protocol GroceriesListdetailprtcl <NSObject>
-(void)AddNewGrocerry:(GroceriesList *) grocerry
destinatinViewController :(UIViewController *)ViewController;
// we called the groceries class and created a object of grocerry hear...

@end
