//
//  TeamScores.m
//  ScoreDetailsAPP
//
//  Created by Prahlad on 6/25/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "TeamScores.h"

@implementation TeamScores

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
                          bowlerPic:(UIImage *) bowlerPic{
    if (self) {
        _noOfRuns =noOfRuns;
        _strikerDetails = strikerDetails;
        _runnerDetails = runnerDetails;
        _bowlerDetails = bowlerDetails;
        _oversDetails = overDetails;
        _battingCountryflag = battingCountryFlag;
        _battingPic = battingPic;
        _bowlingCountryflag = bowlingCountryflag;
        _battingPic = battingPic;
        _bowlingPic = bowlingPic;
        _strickerPic = strickerPic;
        _nonStrickerPic = nonStrickerPic;
        _bowlerPic = bowlerPic;
        
        
    }
    return self;
}

@end
