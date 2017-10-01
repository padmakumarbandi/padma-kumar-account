//
//  location.h
//  7
//
//  Created by IOS DEVELOPER on 7/22/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface location : NSObject
@property(nonatomic, strong) NSString* locationAddress;
@property(nonatomic, strong) NSString* imageName;
@property(assign,nonatomic) float longitude;
@property(assign,nonatomic ) float latittude;
@end
