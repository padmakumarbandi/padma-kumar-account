
/*item name
 
 item cater
 item image
 item info*/
 

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ItemModel : NSObject


@property(strong,nonatomic) NSString * itemcatg;
@property(strong, nonatomic)NSString * itemdes;
@property(strong, nonatomic)UIImage * itempic;
//@property(strong, nonatomic)NSString * itemname;


-(instancetype) initWithitemcatg:(NSString *)itemcatg
                        itemdes : (NSString *)itemdes
                         itempic: (UIImage *)itempic;
//                        itemname:(NSArray *)itemname;

@end
