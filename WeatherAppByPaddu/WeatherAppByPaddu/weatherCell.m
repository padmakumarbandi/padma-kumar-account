//
//  weatherCell.m
//  WeatherAppByPaddu
//
//  Created by IOS DEVELOPER on 7/18/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import "weatherCell.h"
#import "temps.h"
@interface weatherCell()


@property (strong, nonatomic) IBOutlet UIImageView *imageweather;


@property (strong, nonatomic) IBOutlet UILabel *currentweaterdetaillabel;

@property (strong, nonatomic) IBOutlet UILabel *minitemplabel;

@property (strong, nonatomic) IBOutlet UILabel *weaterlabl;


@property (strong, nonatomic) IBOutlet UILabel *maxtemplable;







@end;

@implementation weatherCell

-(void)configureCellWithWeather:(weatherBuilder *)weather {
    self.currentweaterdetaillabel.text = [NSString stringWithFormat:@"%@ºc",weather.temperature.currenttemp];
    self.minitemplabel.text =[NSString stringWithFormat:@"%@ºc", weather.temperature.minitemp];
    self.maxtemplable.text =[NSString stringWithFormat:@"%@ºc", weather.temperature.maxitemp]  ;
    self.weaterlabl.text = weather.weatherdescription;
    
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
  
   
    });
    
    
    
}










@end
