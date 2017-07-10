//
//  ViewController.h
//  WebRegistrationpage
//
//  Created by Prahlad on 6/9/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *FirstName;

@property (weak, nonatomic) IBOutlet UITextField *LastName;

@property (weak, nonatomic) IBOutlet UITextField *Email;

@property (weak, nonatomic) IBOutlet UITextField *Phone;


@property (weak, nonatomic) IBOutlet UITextField *UserNameTextField;


@property (weak, nonatomic) IBOutlet UITextField *PasswordTextField;

@property (weak, nonatomic) IBOutlet UIImageView *image1;


@property (weak, nonatomic) IBOutlet UIImageView *image2;

@property (weak, nonatomic) IBOutlet UIImageView *image3;
@property (weak, nonatomic) IBOutlet UIImageView *image4;

@property (weak, nonatomic) IBOutlet UIImageView *image5;

@property (weak, nonatomic) IBOutlet UIImageView *image6;

@property (weak, nonatomic) IBOutlet  UILabel *tittleLabel;

//@property (copy,nonatomic)NSArray *Array1;




-(IBAction)registerUser:(id)sender;
-(IBAction)ClearForm:(id)sender;









@end

