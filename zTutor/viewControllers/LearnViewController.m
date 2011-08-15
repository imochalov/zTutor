//
//  LearnViewController.m
//  zTutor
//
//  Created by Mochalov Ivan on 08/06/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LearnViewController.h"
#import "Statistics.h"

@implementation ZTLearnViewController

UILabel *_edKnownCount;
UILabel *_edRemainCount;

-(void)loadView {
    [super loadView];
    
    UIView *view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    
    UILabel *lblKnownCount = [[UILabel alloc] initWithFrame:CGRectMake(9, 9, 81, 27)];
    [lblKnownCount setText:@"Learned :"];
    [view addSubview:lblKnownCount];
    [lblKnownCount release];
    
    _edKnownCount = [[UILabel alloc] initWithFrame:CGRectMake(90, 9, 36, 27)];
    [view addSubview:_edKnownCount];
    
    UILabel *lblNewCount = [[UILabel alloc] initWithFrame:CGRectMake(37, 36, 45, 27)];
    [lblNewCount setText:@"New :"];
    [view addSubview:lblNewCount];
    [lblNewCount release];
    
    _edRemainCount = [[UILabel alloc] initWithFrame:CGRectMake(90, 36, 36, 27)];
    [_edRemainCount setTextColor: [UIColor redColor]];
    [view addSubview:_edRemainCount];
    
    UIButton *btnStart = [UIButton buttonWithType:UIButtonTypeRoundedRect]; 
    [btnStart setFrame:CGRectMake(9, 72, 296, 36)];
    [btnStart setTitle:@"Start" forState:UIControlStateNormal];
    [btnStart setBackgroundColor:[UIColor clearColor]];
    [btnStart addTarget:self 
                 action:@selector(buttonClicked:) 
       forControlEvents:UIControlEventTouchUpInside]; 
    [view addSubview:btnStart];    
    [self setView: view];
    
    [view release];
}

-(void)viewDidLoad {
    ZTStatistics *statistics = [CARDSERVICE getStatistics];
    [_edKnownCount setText:[NSString stringWithFormat:@"%i", [statistics getKnown]]];
    [_edRemainCount setText:[NSString stringWithFormat:@"%i", [statistics getRemain]]];
}

-(void)buttonClicked:(id)sender {
    //TODO: need implementation
    NSLog(@"start cards");
}

-(void)dealloc {
    [super dealloc];
    
    [_edKnownCount release];
    [_edRemainCount release];
}

@end
