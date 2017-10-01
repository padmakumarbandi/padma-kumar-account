//
//  ViewController.m
//  DropBallsAnimatColiGraphicStanford
//
//  Created by Prahlad on 7/13/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "DropBallViewController.h"

@interface DropBallViewController ()
@property (weak, nonatomic) IBOutlet UIView *gameView;
@property(nonatomic, strong)UIDynamicAnimator *animator;
@property(nonatomic,strong)UIGravityBehavior *gravity;
- (IBAction)tapaction:(id)sender;
@end

@implementation UIViewController
//-(UIGravityBehavior *) gravity {
//    if(!self.gravity){
//        self.gravity = [[UIGravityBehavior alloc]init];
//        self.gravity.magnitude = 0.9;
//        [[self.animator alloc]init];
//        
//    }return _gravity;
//}
//-(UIDynamicAnimator *)UIDynamicAnimator{
//    if(!animator){
//        _animator =[[UIDynamicAnimator alloc]initWithReferenceView:self.gameView];
//        
//    }
//}
//

static const CGSize Drop_size = {30, 30};

- (IBAction)tapaction:(id)sender {
    
    [self someDrop];
}

-(void) someDrop{
    
    CGRect frame;
    frame.origin = CGPointZero;
    frame.size =Drop_size;
    int x=( arc4random()% (int)self.gameView.bounds.size.width)/Drop_size.width;
    frame.origin.x= x *Drop_size.width;
    UIView * dropView= [[UIView alloc]initWithFrame:frame];
    dropView.backgroundColor = [self randomColor ];
    [self.gameView addSubview:dropView];
    
}-(UIColor *) randomColor{
    switch (arc4random() %4) {
        case 0 : return [UIColor whiteColor];
        case 1 : return [UIColor clearColor];
        case 2: return [UIColor redColor];

        case 3: return [UIColor yellowColor];

        case 4 : return [UIColor darkGrayColor];

            
      
    }

    
    
    
    
    return [UIColor blueColor];
    (void)viewDidLoad {
        [super viewDidLoad];
}
}


@end
