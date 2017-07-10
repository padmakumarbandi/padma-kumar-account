//
//  TRansportsystem.h
//  PadduOBJctutorial1
//
//  Created by Prahlad on 6/4/17.
//  Copyright © 2017 PK. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRansportsystem : NSObject
@property NSString * types;
@property NSString * uses;
@property NSString * colors;
@property float * size;
-(instancetype) initWithName: (NSString*) defaultName;
-(void)getInfo;
-(float) sizeInMeters:(float) sizeInFeets;
//-(float) sizeInMeters/*method name or function name*/:(float) sizeInFeets;/*method name or function name*/
-(NSString*) usesFor : (NSString*) nameOfVehicle;
-(int) getSum : (int) num1
   nextNumber : (int) num2;



@end
