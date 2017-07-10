/* dealer info as follows
 name;
 reference info;
 contact info
 Array of cars info;*/


#import <Foundation/Foundation.h>
#import "Contactinfo.h"
#import "DelearDetails.h"

@interface DelearDetails : NSObject

@property(strong,nonatomic) NSString *Name;
@property(strong,nonatomic) NSArray *referencecarinfo;
@property(assign,nonatomic) Contactinfo *contact_info;

-(instancetype)initWithName: (NSString*)Namefrnd
             reference_info: (NSArray*)referencearraycarinfo
               contact_info:(Contactinfo*) contactinfo;


@end
