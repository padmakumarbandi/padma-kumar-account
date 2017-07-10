//
//  ViewController.m
//  Pks asignment
//
//  Created by Prahlad on 5/28/17.
//  Copyright © 2017 pk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, strong)NSString *username;
@property(nonatomic, strong)NSString *password;
@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.username = @"bandi";
    self.password = @"secured";
    self.passwordTextField.secureTextEntry = YES;
    
    NSLog(@"%@", self.username);
    NSLog(@"%@", self.password);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (IBAction)loginButtonPressed:(id)sender {
    BOOL isUsersEqual =  [self.username isEqualToString:[self.usernameTextField text]];
    BOOL isPasswordsEqual = [self.password isEqualToString:[self.passwordTextField text]];
    if (isUsersEqual && isPasswordsEqual)
    {
        [self.notificationLabel setText:@"Login Sucess"];
          NSLog(@"success");
    }else{
        [self.notificationLabel setText:@"Login Failed"];
          NSLog(@"failed");
    }
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
@end
