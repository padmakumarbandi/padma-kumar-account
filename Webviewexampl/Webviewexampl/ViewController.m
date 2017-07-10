  //
//  ViewController.m
//  Webviewexampl
//
//  Created by Prahlad on 7/8/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        self.activityindicATOR.hidden =YES;
// [self loadStaticHTMLInWebView];
    [self loadPDF];
}


-(void)loadStaticHTMLInWebView{
    NSString *HTMLString = @"<html>"\
                        @"<body>"\
    @"<h1>welcome to my world  PADMA KUMAR HAPPY TO WELCOME U TO IOS DEVP WORLD <h1>"\
    @"</body>"\
      @"</html>";
    [self.webview loadHTMLString:HTMLString baseURL:nil];
}
-(void)loadPDF{
    NSString *pdfpath =  [[NSBundle mainBundle]pathForResource:@"testing" ofType:@"pdf"];
    NSURL *url2 = [NSURL fileURLWithPath:pdfpath ];
    
    NSURLRequest * request1 = [NSURLRequest requestWithURL:url2];
    
    [self.webview loadRequest:request1];

}

- (IBAction)goButnPrsd:(id)sender {
    NSString *someString = self.textFieldPrsd.text;
    NSURL *url1 = [NSURL URLWithString:someString];
    
    NSURLRequest * request1 = [NSURLRequest requestWithURL:url1];
    
    [self.webview loadRequest:request1];

}


-(void)UIWebViewDidStartLoad:(UIWebView *)webview{
    self.activityindicATOR.hidden =NO;
    [self.activityindicATOR startAnimating];
    
}
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    self.activityindicATOR.hidden = YES;
    [self.activityindicATOR stopAnimating];
    
}
@end
