//
//  SecondViewController.h
//  Delgationexampl
//
//  Created by Prahlad on 6/28/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorPrtcl.h"
@interface SecondViewController : UIViewController

//@property(nonatomic,strong)NSString *operatnToPerform;
@property(nonatomic,strong) id<CalculatorPrtcl> delegate;

//@property(nonatomic,assign)NSInteger *num1;
//@property(nonatomic,assign)NSInteger *num2;
//@property(nonatomic,assign)NSInteger *res;
- (IBAction)Calculate:(id)sender;
@property(nonatomic,strong) NSString * operationToPerform;
- (IBAction)Donebutton:(id)sender;
- (IBAction)CancelButton:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *num1textfiled;
@property (weak, nonatomic) IBOutlet UITextField *number2textfield;

@property (weak, nonatomic) IBOutlet UILabel *totaldisplaylabel;

@end
