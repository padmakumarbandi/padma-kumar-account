

/*
car has list
 make;
 year;
 model;
 info; or descreption;;;;;;;;;*/

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Carsdetails : NSObject

@property(strong,nonatomic) NSString * make;
@property(strong, nonatomic)NSString * Year;
@property(strong, nonatomic)NSString * modelcolor;
@property(strong, nonatomic)NSString * info;
@property(strong,nonatomic)UIImage* image1;

-(instancetype) initWithmake:(NSString *)make
                       modelcolor: (NSString *)modelcolor
                        year: (NSString *)year
                        info:(NSString *)info
                      image1:(UIImage*)carimage;







@end
