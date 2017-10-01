//
//  weatherCell.h
//  WeatherAppByPaddu
//
//  Created by IOS DEVELOPER on 7/18/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "weatherBuilder.h"


@interface weatherCell : UITableViewCell
-(void)configureCellWithWeather:(weatherBuilder *)weather ;
@end
