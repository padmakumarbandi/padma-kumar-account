//
//  ViewController.m
//  Categorialndcontexampl
//
//  Created by Prahlad on 7/5/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "NSObject+NEWCat.h"
#import "ViewController.h"
#import "UIColor+exampl.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self . view. backgroundColor = [UIColor redColor];
    
    
 NSString *result   =[NSString isStringPalindrome:@"mom"]?@"Yes":@"No";
    NSLog(@"%@", result); 
}

@end
