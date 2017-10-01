//
//  DiceView.h
//  DiceApp
//
//  Created by IOS DEVELOPER on 7/23/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DiceView : UIView
@property(nonnull, strong)UIImageView *imagenumview;

#pragma mark methods
-(void)showDieNUmber:(int)number;

@end
