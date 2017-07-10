
//

#import <Foundation/Foundation.h>
#import "ItemModel.h"

@implementation ItemModel

-(instancetype) initWithitemcatg:(NSString *)itemcatg
                        itemdes : (NSString *)itemdes
                         itempic: (UIImage *)itempic{
//                        
    self =[super init];
    if (self) {
        _itemdes=itemdes;
        _itempic=itempic;
         _itemcatg=itemcatg;
    }
    return self;
    
}
@end
