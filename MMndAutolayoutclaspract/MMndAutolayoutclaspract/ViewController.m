//
//  ViewController.m
//  MMndAutolayoutclaspract
//
//  Created by Prahlad on 7/4/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, strong) NSUserDefaults * default1;
@property(nonatomic, strong)    NSMutableString *mutableStri1;
@end
static NSString * const key= @"somevalues";
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.default1=  [NSUserDefaults standardUserDefaults];
                     
      NSString*string2 =[self.default1 objectForKey:key];
    if (string2) {
        self.textvw.text = string2;
    }
    
}



- (IBAction)butnpresd:(id)sender {
    NSString *str1 = self.textfield.text;
    
   
    self.default1 = [NSUserDefaults standardUserDefaults];
[NSMutableString alloc];
    NSString*string2 =[self.default1 objectForKey:key];
    if (string2) {
        self.mutableStri1 = [NSMutableString stringWithString: string2 ];
        
        [self.mutableStri1 appendString:str1];
    }
    else{
       self.mutableStri1 = [NSMutableString stringWithString: str1];
    }
    [self.default1 setObject:str1 forKey:key];
    [self.default1 synchronize];
    
 self.textvw.text = self.mutableStri1;
    
    
}
@end
