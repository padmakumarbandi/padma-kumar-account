//
//  TeamScores.h
//  ScoreDetailsAPP
//
//  Created by Prahlad on 6/25/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface TeamScores : NSObject
@property(strong,nonatomic) NSString * TeamsDetails;
@property(strong,nonatomic)NSString *noOfRuns;
@property(strong,nonatomic)NSString *strikerDetails;
@property(strong,nonatomic)NSString *runnerDetails;
@property(strong,nonatomic)NSString * bowlerDetails;
@property(strong,nonatomic)NSString *oversDetails;
@property(nonatomic,strong)UIImage * battingCountryflag;
@property(nonatomic,strong)UIImage * battingPic;
@property(nonatomic,strong)UIImage * bowlingCountryflag;
@property(nonatomic,strong)UIImage * bowlingPic;
@property(nonatomic,strong)UIImage * strickerPic;
@property(nonatomic,strong)UIImage * nonStrickerPic;
@property(nonatomic,strong)UIImage * bowlerPic;



-(instancetype) initWithTeamDetails: (NSString *)TeamDetails
                          noOfRuns :(NSString *)noOfRuns
                    strikerDetails :(NSString *)strikerDetails
                     runnerDetails :(NSString *)runnerDetails
                     bowlerDetails :(NSString *)bowlerDetails
                        overDetails: (NSString *) overDetails
                 battingCountryFlag:(UIImage *) battingCountryFlag
                        battingPic :(UIImage *) battingPic
                        bowlingPIc :(UIImage *) bowlingPic
               bowlingCountryflag :(UIImage *) bowlingCountryflag
                       strickerPic :(UIImage *) strickerPic
                    nonStrickerPic :(UIImage *) nonStrickerPic
                          bowlerPic:(UIImage *) bowlerPic;
@end
