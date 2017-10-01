//
//  DiceView.m
//  DiceApp
//
//  Created by IOS DEVELOPER on 7/23/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "DiceView.h"

@implementation DiceView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
         
//        initalizing The Code
//        and created UIiiageView and asaign it to ur property
        self.imagenumview.image = [[UIImageView alloc]initWithFrame:CGRectMake(0,0,self.frame.size.width, self.frame.size.height)];
//        allocated the imageView to the View
        
        [self addSubview:self.imagenumview];
    }
    return self;
    
}
-(void)showDieNUmber:(int)number{
//    constructed file name based ob the input value
     
    NSString *FileNmae = [NSString stringWithFormat:@"%d",number];
//    stted the image to the UiimageView
    self.imagenumview.image = [UIImage imageNamed:FileNmae];
    
}

@end
