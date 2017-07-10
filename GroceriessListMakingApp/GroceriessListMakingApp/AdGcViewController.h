//
//  AdGcViewController.h
//  GroceriessListMakingApp
//
//  Created by Prahlad on 6/29/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroceriesListdetailprtcl.h"
@interface AdGcViewController : UIViewController
- (IBAction)cancelbutnhitd:(id)sender;
- (IBAction)SaveButnPrsd:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *GCNameTF;
@property (weak, nonatomic) IBOutlet UITextField *GCquntTF;
@property (strong, nonatomic) IBOutlet UIAlertAction * action1;
@property (strong, nonatomic) IBOutlet UIAlertController *alert1;
@property(weak,nonatomic) id<GroceriesListdetailprtcl>delegate;
@end
