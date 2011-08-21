//
//  StatisticsCardView.m
//  zTutor
//
//  Created by Mochalov Ivan on 21.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "StatisticsCardView.h"


@implementation ZTStatisticsCardView

UILabel *_edKnownCount;
UILabel *_edRemainCount;
UIButton *_btnStart;
id<IZTStatisticsViewDelegate> _delegate;

-(void)show:(UIView *)container {
    UILabel *lblKnownCount = [[UILabel alloc] initWithFrame:CGRectMake(9, 9, 81, 27)];
    [lblKnownCount setText:@"Learned :"];
    [container addSubview:lblKnownCount];
    [lblKnownCount release];
    
    _edKnownCount = [[UILabel alloc] initWithFrame:CGRectMake(90, 9, 36, 27)];
    [container addSubview:_edKnownCount];
    
    UILabel *lblNewCount = [[UILabel alloc] initWithFrame:CGRectMake(37, 36, 45, 27)];
    [lblNewCount setText:@"New :"];
    [container addSubview:lblNewCount];
    [lblNewCount release];
    
    _edRemainCount = [[UILabel alloc] initWithFrame:CGRectMake(90, 36, 36, 27)];
    [_edRemainCount setTextColor: [UIColor redColor]];
    [container addSubview:_edRemainCount];
    
    _btnStart = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_btnStart retain];
    [_btnStart setFrame:CGRectMake(9, 72, 296, 36)];
    [_btnStart setTitle:@"Start" forState:UIControlStateNormal];
    [_btnStart setBackgroundColor:[UIColor clearColor]];
    [_btnStart addTarget:self 
                 action:@selector(startButtonClicked:) 
       forControlEvents:UIControlEventTouchUpInside]; 
    [container addSubview:_btnStart];    
    
    ZTStatistics *statistics = [_delegate statistics];
    [_edKnownCount setText:[NSString stringWithFormat:@"%i", [statistics getKnown]]];
    [_edRemainCount setText:[NSString stringWithFormat:@"%i", [statistics getRemain]]];
}

-(void)setDelegate:(id<IZTStatisticsViewDelegate>)delegate {
    _delegate = delegate;
    [_delegate retain];
}

-(void)startButtonClicked:(id)sender {
    [_delegate launch];
}

-(void)dealloc {
    [_edKnownCount release];
    [_edRemainCount release];
    [_delegate release];
    [_btnStart release];
    
    [super dealloc];
}

@end
