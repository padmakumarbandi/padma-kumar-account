//
//  AppDelegate.m
//  Assignment1
//
//  Created by Prahlad on 6/1/17.
//  Copyright © 2017 PK. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    NSString *yourString = @"This is a string, you like?";
// Returns length of the string
    int yourLength = [yourString length];
    
    
// Print the strings in uppercase and lowercase
    NSString * str=@"jit";
    NSLog(@"%@",[str uppercaseString]);
    [str uppercaseString];
    
    
// Compare strings and print out if they are equal or not equal
    NSString *yourString1 = @"iOS-Blog";
    if ([yourString isEqualToString:@"iOS-Blog"]) {
        /// Out put the result to the NSLog
        NSLog(@"Yes, They are both equal");
    }
    
// Combine two strings
    NSString *myString = @"This";
    NSString *test = [myString stringByAppendingString:@" is just a test"];
    
    
    NSString * nothing = @"pks";
    NSLog( @"size if string :%d", (int) [nothing length]);
    
    return YES;
    - (instancetype)init
    {
        self = [super init];
        if (self) {
    self. name = @"no Nmae";
            
        }
        return self;
    }
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
