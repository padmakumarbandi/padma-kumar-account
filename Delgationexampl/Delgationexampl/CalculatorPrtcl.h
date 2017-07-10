//
//  CalculatorPrtcl.h
//  Delgationexampl
//
//  Created by Prahlad on 6/28/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CalculatorPrtcl <NSObject>
-(void)operationPerformed:(NSString*) operation
                  number1:(NSInteger ) number1
                  number2:(NSInteger ) number2
                  result :(NSInteger) result;
@end
