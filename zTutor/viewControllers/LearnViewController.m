//
//  LearnViewController.m
//  zTutor
//
//  Created by Mochalov Ivan on 08/06/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LearnViewController.h"
#import "Statistics.h"
#import "CardCourse.h"
#import "ICardView.h"
#import "NewCardView.h"

@implementation ZTLearnViewController

UIView *_mainView;

UILabel *_edKnownCount;
UILabel *_edRemainCount;

ZTCardCourse *_course;

-(void)loadView {
    [super loadView];
    
    _mainView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    
    UILabel *lblKnownCount = [[UILabel alloc] initWithFrame:CGRectMake(9, 9, 81, 27)];
    [lblKnownCount setText:@"Learned :"];
    [_mainView addSubview:lblKnownCount];
    [lblKnownCount release];
    
    _edKnownCount = [[UILabel alloc] initWithFrame:CGRectMake(90, 9, 36, 27)];
    [_mainView addSubview:_edKnownCount];
    
    UILabel *lblNewCount = [[UILabel alloc] initWithFrame:CGRectMake(37, 36, 45, 27)];
    [lblNewCount setText:@"New :"];
    [_mainView addSubview:lblNewCount];
    [lblNewCount release];
    
    _edRemainCount = [[UILabel alloc] initWithFrame:CGRectMake(90, 36, 36, 27)];
    [_edRemainCount setTextColor: [UIColor redColor]];
    [_mainView addSubview:_edRemainCount];
    
    UIButton *btnStart = [UIButton buttonWithType:UIButtonTypeRoundedRect]; 
    [btnStart setFrame:CGRectMake(9, 72, 296, 36)];
    [btnStart setTitle:@"Start" forState:UIControlStateNormal];
    [btnStart setBackgroundColor:[UIColor clearColor]];
    [btnStart addTarget:self 
                 action:@selector(buttonClicked:) 
       forControlEvents:UIControlEventTouchUpInside]; 
    [_mainView addSubview:btnStart];    
    [self setView: _mainView];
}

-(void)viewDidLoad {
    _course = [CARDSERVICE getCourse];
}

-(void)viewDidAppear:(BOOL)animated {
    ZTStatistics *statistics = [_course getStatistics];
    [_edKnownCount setText:[NSString stringWithFormat:@"%i", [statistics getKnown]]];
    [_edRemainCount setText:[NSString stringWithFormat:@"%i", [statistics getRemain]]];
}

-(void)buttonClicked:(id)sender {
    ZTNewCardView *currentView = [[ZTNewCardView alloc] init];
    [currentView setDelegate:self];
    [currentView show:_mainView];
    [currentView release];
}

-(void)complete:(BOOL)success {
    NSLog(@"%c", success);
}

-(ZTCardPacket *)getPacket {
    return [_course currentPacket];
}

-(ZTCard *)card {
    return [_course currentCard];
}

-(void)dealloc {
    [super dealloc];
    
    [_edKnownCount release];
    [_edRemainCount release];
    [_mainView release];
}

@end
