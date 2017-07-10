//
//  MatchInfo.h
//  ScoreDetailsAPP
//
//  Created by Prahlad on 6/27/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MatchInfo : NSObject
@property(nonatomic,strong) NSArray * teamsArray;
@property (nonatomic, strong)NSString * name;


-(instancetype) initWithteamsArray :(NSArray *)teamsArray
                               name:(NSString *) name;

