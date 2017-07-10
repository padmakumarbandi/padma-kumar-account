//
//  ViewController.m
//  LocalndRemotnotification
//
//  Created by Prahlad on 7/8/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILocalNotification *notifacation = [[UILocalNotification alloc]init];
    notifacation.alertBody = @"notifiacation msg appeared";
    notifacation.alertTitle= @"imp info";
    notifacation.timeZone =[NSTimeZone defaultTimeZone];
    
    NSDate *today =[[NSDate alloc]init];
    [today dateByAddingTimeInterval:120.0];
    notifacation.fireDate = today;
    
    
    
    
    
}


@end
