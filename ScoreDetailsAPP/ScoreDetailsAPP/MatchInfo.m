//
//  MatchInfo.m
//  ScoreDetailsAPP
//
//  Created by Prahlad on 6/27/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "MatchInfo.h"

@implementation MatchInfo

-(instancetype) initWithteamsArray :(NSArray *)teamsArray
                               name:(NSString *) name{
    if (self) {
        _teamsArray = teamsArray;
        _name = name;
    }
    return self;
}
@end
