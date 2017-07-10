//
//  UserInfo.h
//  Assign1_MVC
//
//  Created by Prahlad on 6/13/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserInfo : NSObject{
    NSString *uname;
    
}
-(BOOL)validateName:(NSString*)name;

@end
