//
//  ViewController.m
//  GCDndNSoperationexampl
//
//  Created by Prahlad on 7/6/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    //[self downloadingNewMethod];
    [self downloadingUsingGCD];
    
}
- (void)downloadingNewMethod {
    //maun thread
    NSArray*urlArray = [self.imagesurlArray];
    NSArray * arrayforimage = @[self.imv1, self.imv2,self.imv3,self.imv4];
    
    for (NSInteger index=0; index<urlArray.count; index++) {
        NSData *data = [NSData dataWithContentsOfURL:urlArray[index]];
        UIImage *image = [UIImage imageWithData:data];
        UIImageView * imageview1 =arrayforimage [index];
        imageview1.image = image;
        
        
        
        
        NSLog(@"%@", data);
    }
}
-(void)downloadingUsingGCD{
    //    Grand central dispatch
    
    
    NSArray*urlArray = [self.imagesurlArray];
    NSArray * arrayforimage = @[self.imv1, self.imv2,self.imv3,self.imv4];
    __block NSInteger tempInt = 1;
    for (NSInteger index=0; index<urlArray.count; index++) {
        
        
    }
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        
        NSData *data = [NSData dataWithContentsOfURL:urlArray[index]];
        UIImage *image = [UIImage imageWithData:data];
        dispatch_async(dispatch_get_main_queue(),^{
            UIImageView * imageview1 =arrayforimage [index];
            imageview1.image = image;
        });
        
        NSLog(@"%ld", (long)tempInt);
        tempInt ++;
        
        
        
    });
}

-(void)downloadingUsingNSOperationQueues{
    //    NSOperationQueue
    
    NSArray*urlArray = [self.imagesurlArray];
    NSArray * arrayforimage = @[self.imv1, self.imv2,self.imv3,self.imv4];
    
    NSOperationQueue *nsopq = [[NSOperationQueue alloc]init];
    [nsopq setMaxConcurrentOperationCount:1];
        for (NSInteger index=0; index<urlArray.count; index++) {
    [nsopq addOperationWithBlock:^{
        NSData *data = [NSData dataWithContentsOfURL:urlArray[index]];
    
            UIImage *image = [UIImage imageWithData:data];
            [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                UIImageView * imageview1 =arrayforimage [index];
                imageview1.image = image;
                
            }];
            
        }];
    
    }
     }

     NSBlockOperation *operation = [NSBlockOperation blockOperationWithBlock:^{
        
        
         NSData *data = [NSData dataWithContentsOfURL:urlArray[index]];
         
         UIImage *image = [UIImage imageWithData:data];
         [[NSOperationQueue mainQueue] addOperationWithBlock:^{
             UIImageView * imageview1 =arrayforimage [index];
             imageview1.image = image;
             
         }];
         
     }];
 



     
     -(NSArray)*imagesurlArray{
         - (void)downloadingNewMethod {
             
             //
             
             NSURL *url1 = [NSURL URLWithString:@"https://www.google.com/search?q=images&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjQirT_sfXUAhXL5YMKHdkzBFYQ_AUICigB&biw=1280&bih=682#tbm=isch&q=swami+vivekananda+quotes&imgdii=GwJ6XzcBEYtG1M:&imgrc=dcShuHIJmjE9RM:"];
             //
             NSURL *url2 = [NSURL URLWithString:@"https://www.google.com/search?q=images&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjQirT_sfXUAhXL5YMKHdkzBFYQ_AUICigB&biw=1280&bih=682#tbm=isch&q=swami+vivekananda+quotes&imgdii=2U55DPfIq2L96M:&imgrc=dcShuHIJmjE9RM:"];
             //
             NSURL *url3 =  [NSURL URLWithString:@"https://www.google.com/search?q=images&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjQirT_sfXUAhXL5YMKHdkzBFYQ_AUICigB&biw=1280&bih=682#tbm=isch&q=swami+vivekananda+quotes&imgdii=WznMPtK6mgLevM:&imgrc=dcShuHIJmjE9RM:"];
             //
             NSURL *url4 =  [NSURL URLWithString:@"https://www.google.com/search?q=images&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjQirT_sfXUAhXL5YMKHdkzBFYQ_AUICigB&biw=1280&bih=682#tbm=isch&q=swami+vivekananda+quotes&imgrc=dcShuHIJmjE9RM:"];
             return @[url1,url2,url3,url4];
         }
         
         
     }
     @end
