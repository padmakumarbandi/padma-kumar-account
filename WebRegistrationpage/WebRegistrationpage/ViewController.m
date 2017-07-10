//
//  ViewController.m
//  WebRegistrationpage
//
//  Created by Prahlad on 6/9/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //NSArray * Array1 = @[];
    //self.Array1 = @[];
    self.tittleLabel.hidden =YES;
    self.PasswordTextField.secureTextEntry =  YES;
    
}


-(IBAction)ClearForm:(id)sender{
    self.FirstName.text  =@"";
    self.LastName.text =@"";
    self.Email.text = @"";
    self.Phone.text = @"";
    self.UserNameTextField.text =0;
    self.PasswordTextField.text =nil;
    self.image1.image = nil;
    self.image2.image = nil;
    self.image3.image = nil;
    self.image4.image = nil;
    self.image5.image = nil;
    self.image6.image = nil;
    self.tittleLabel.hidden =YES;
    
    
}

-(IBAction)registerUser:(id)sender {
    
    NSMutableArray *Array1 = [[NSMutableArray alloc] init];
    if([Array1 count] > 0) {
        [Array1 removeAllObjects];
    }
    UIImage *cross = [UIImage imageNamed:@"cross.png"];
    UIImage* check = [UIImage imageNamed:@"checkmark.png"];
    if ( [self.FirstName.text isEqual:@""] ){
        self.image1.image = cross;
        [Array1 addObject:@"First name"];//hear we are adding the names to the label through array
        
    }else
    {
        [self.image1 setImage:[UIImage imageNamed:@"checkmark.png"]];
        //NSLog(@"success");
    }
    
    
    if ( [self.LastName.text isEqual:@""] ){
        self.image2.image = cross;
        [Array1 addObject:@"Last name"];
        //NSLog(@"failed");
    }else
    {
        [self.image2 setImage:[UIImage imageNamed:@"checkmark.png"]];
        
    }
    //email
    if ( [self.Email.text isEqual:@""] ){
        [self.image3 setImage:[UIImage imageNamed:@"cross.png"]];
        [Array1 addObject:@"Email id"];
        
    }else
    {
        NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+.[com]";
        NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
        
        if([emailTest evaluateWithObject:self.Email.text]){
            /*we are comparing or evaluate// or adding or appending or concating */
            [self.image3 setImage:[UIImage imageNamed:@"checkmark.png"]];
        }else{
            [self.image3 setImage:[UIImage imageNamed:@"cross.png"]];
        }
        
        
    }//phn
    if ([self.Phone.text isEqual:@""]) {
        [Array1 addObject:@"Phone"];
        [self.image4 setImage:[UIImage imageNamed:@"cross.png"]];
        //
    }else
    {
        NSString *phoneRegex = @"[0-9]{10}";
        NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", phoneRegex];
        if([phoneTest evaluateWithObject:self.Phone.text]){
            self.image4.image = check;
        }else
        {
            [self.image4 setImage:[UIImage imageNamed:@"cross.png"]];
        }
    }
    
    if ([self.UserNameTextField.text isEqual: @"" ]) {
        [self.image5 setImage:[UIImage imageNamed:@"cross.png"]];
        [Array1 addObject:@"UserNameTextField"];
        
        /*hear i declared and took the regular expressions*/
    }else{
        NSRegularExpression* regularexpression = [NSRegularExpression regularExpressionWithPattern:@"^.*(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])" options:0 error: nil];
        if([regularexpression numberOfMatchesInString:self.UserNameTextField.text options:0  range:NSMakeRange(0, [self.UserNameTextField.text length])]>0){
            [self.image5 setImage:[UIImage imageNamed:@"checkmark.png"]];
        }else
        {
            [self.image5 setImage:[UIImage imageNamed:@"cross.png"]];
            
        }
    }
    
    if([self.PasswordTextField.text isEqual: @""]){
        [self.image6 setImage:[UIImage imageNamed:@"cross.png"]];
        [Array1 addObject:@"Password textField"];
    }
    else{
        NSRegularExpression* regularexpression2 = [NSRegularExpression regularExpressionWithPattern:@"^.*(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[@#$%^&+=])" options:0 error: nil];
        if([regularexpression2 numberOfMatchesInString:self.PasswordTextField.text options:0  range:NSMakeRange(0, [self.PasswordTextField.text length])]>0){
            [self.image6 setImage:[UIImage imageNamed:@"checkmark.png"]];
        }else
        {
            [self.image6 setImage:[UIImage imageNamed:@"cross.png"]];
        }
        
    }
    
    if ([Array1 count]>0){
        
        self.tittleLabel.hidden =NO;
    }else
    {
        self.tittleLabel.hidden =YES;
        
    }
    NSString *labelText = @"";
    //NSLog(@"%@ Hellooooooo...............................",Array1);
    for(NSUInteger i=0;i<[Array1 count];i++){
        if(i < [Array1 count]-1) {
            labelText = [labelText stringByAppendingString:[Array1 objectAtIndex:i]];
            labelText = [labelText stringByAppendingString:@", "];
        }
        else {
            labelText = [labelText stringByAppendingString:[Array1 objectAtIndex:i]];
            if([Array1 count] > 1) {
                labelText = [labelText stringByAppendingString:@" are missing"];
            }
            else {
                labelText = [labelText stringByAppendingString:@" is                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         missing"];
            }
        }
        
    }
    self.tittleLabel.text = labelText;
    //NSLog(@"%@ hii",labelText);
}


@end;





//    - (void)didReceiveMemoryWarning {
//        [super didReceiveMemoryWarning];
//
//    }
//
//
//
//    @end
//    //    NSString *comment = @"Hello, @username! How are you? And @username2??";
//
//    NSError *error = nil;
//    NSRegularExpression * Username = [NSRegularExpression regularExpressionWithPattern:@"@([A-Za-z]+[A-Za-z0-9-]+)" options:0 error:&error];
//    NSArray *matches = [Username matchesInString:comment options:0 range:NSMakeRange(0, comment.length)];
//    for (NSTextCheckingResult *match in matches) {
//        NSRange wordRange = [match rangeAtIndex:1];
//        NSString *username = [comment substringWithRange:wordRange];
//        NSLog(@"searchUsersInComment result --> %@", username);
//    }
//NSRegularExpression* regex = [NSRegularExpression regularExpressionWithPattern:@"(?:www\\.)?((?!-)[a-zA-Z0-9-]{2,63}(?<!-))\\.?((?:[a-zA-Z0-9]{2,})?(?:\\.[a-zA-Z0-9]{2,})?)" options:0 error:&error];
//NSArray* matches = [regex matchesInString:searchedString options:0 range:NSMakeRange(0, [searchedString length])];
//for ( NSTextCheckingResult* match in matches )
//{
//    NSString* matchText = [searchedString substringWithRange:[match range]];
//    NSLog(@"match: %@", matchText);
//    //
//
//}
//- (IBAction)RegisterUserispressed:(id)sender {
//    NSString *Username = self.UserNameTextField.text;
//    NSString *Password = self. PasswordTextField.text;
//    BOOL isUsersEqual =  [self.UserName isEqualToString:[self.UserNameTextField text]];
//    BOOL isPasswordsEqual = [self.Password isEqualToString:[self.PasswordTextField text]];
//
//
//    if (isUsersEqual && isPasswordsEqual)
//    {
//        [self.image1 setImage:[UIImage imageNamed:@"checkmark.png"]];
//        c
//    }else{
//        [self.image1 setImage:[UIImage imageNamed:@"cross.png"]];
//        NSLog(@"failed");
//}
//@end

