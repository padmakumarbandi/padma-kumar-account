//
//  DealerContactIinfoViewController.m
//  MVC_TableVIEWndNavigation
//
//  Created by Prahlad on 6/20/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "DealerContactIinfoViewController.h"
#import "Contactinfo.h"
@interface DealerContactIinfoViewController ()

@end

@implementation DealerContactIinfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.Location.text = self.contactinfo.location;
    
    self.conactinfo.text = self.Contactinfo.email;
    emailid= self.Contactinfo.emailid;
    self.WebsiteUrl = self.Contactinfo.details;
}




@end
