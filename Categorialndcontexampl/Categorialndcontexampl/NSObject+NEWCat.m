//
//  NSObject+NEWCat.m
//  Categorialndcontexampl
//
//  Created by Prahlad on 7/5/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "NSObject+NEWCat.h"

@implementation NSObject (NEWCat)
+(BOOL)isStringPalindrome:(NSString *)string{
    
    NSInteger length = string.length;
    NSInteger halfLength = (length / 2);
    
    BOOL isPalindrome = YES;
    
    for (int i = 0; i < halfLength; i++) {
        if ([string characterAtIndex:i] != [string characterAtIndex:length - i - 1]) {
            isPalindrome = NO;
            break;
        }
    }
    return isPalindrome;
    
}
@end
