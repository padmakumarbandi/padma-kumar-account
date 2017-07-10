/*
 contact info has the following details
 location;
 contact no;
 email;
 delear further details  //  ;;;;;;abcdefghijklmnopqrstuvwxyz;asdf;lkjhghqwertrpoizxcv*/

#import <Foundation/Foundation.h>

@interface Contactinfo : NSObject


@property( strong,nonatomic) NSString * location;
@property(assign,nonatomic) NSString * contactno;
@property( strong,nonatomic) NSString* emailid;
@property(strong,nonatomic) NSString * details;

-(instancetype) initWithlocation: (NSString*) location
                       contactno: (NSString*) contactno
                        emailid : (NSString*) emailid
                         details: (NSString*) details;


@end
