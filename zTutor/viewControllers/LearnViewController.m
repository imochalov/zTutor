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

ZTCardCourse *_course;
ZTStatisticsCardView *_statView;

-(void)clearView {
    for (UIView *item in [_mainView subviews]) {
        [item removeFromSuperview];
    }
}

-(void)loadView {
    [super loadView];
    
    _mainView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    
    [self setView: _mainView];
}

-(void)viewDidLoad {
    _course = [CARDSERVICE getCourse:@"test"]; //TODO:need implementation
}

-(void)viewDidAppear:(BOOL)animated {
    ZTStatisticsCardView *statView = [self getStatisticsView];
    [self clearView];
    [statView show:_mainView];
}

-(ZTStatisticsCardView *)getStatisticsView {
    if (_statView == nil) {
        _statView = [[ZTStatisticsCardView alloc] init];
        [_statView setDelegate:self];
    }
    return _statView;
}

-(ZTStatistics *)statistics {
    return [_course getStatistics];
}

-(void)launch {
    ZTNewCardView *currentView = [[ZTNewCardView alloc] init];
    [currentView setDelegate:self];
    [self clearView];
    [currentView show:_mainView];
    [currentView release];
}

-(void)complete:(BOOL)success {
    NSLog(@"%c", success);
}

-(ZTCardPacket *)packet {
    return [_course currentPacket];
}

-(ZTCard *)card {
    return [_course currentCard];
}

-(void)dealloc {
    [_mainView release];
    [_statView release];
    
    [super dealloc];
}

@end
