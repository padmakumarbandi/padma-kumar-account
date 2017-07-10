//
//  ViewController.h
//  Webviewexampl
//
//  Created by Prahlad on 7/8/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)goButnPrsd:(id)sender;
@property (weak, nonatomic) IBOutlet UIWebView *webview;
@property (weak, nonatomic) IBOutlet UITextField *textFieldPrsd;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityindicATOR;


@end

