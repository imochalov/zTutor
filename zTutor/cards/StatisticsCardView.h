//
//  StatisticsCardView.h
//  zTutor
//
//  Created by Mochalov Ivan on 21.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Statistics.h"


@protocol IZTStatisticsViewDelegate <NSObject>

-(void)launch;

@property(nonatomic,readonly) ZTStatistics *statistics;

@end

@interface ZTStatisticsCardView : NSObject {
    
}

-(void)show:(UIView *)container;

@property(nonatomic,assign) id<IZTStatisticsViewDelegate> delegate;

-(void)startButtonClicked:(id)sender;

@end
