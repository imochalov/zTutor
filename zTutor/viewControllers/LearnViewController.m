//
//  LearnViewController.m
//  zTutor
//
//  Created by Mochalov Ivan on 08/06/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LearnViewController.h"
#import "Statistics.h"
#import "NewCardView.h"
#import "StackedCardView.h"


@implementation ZTLearnViewController

-(void)clearView {
    for (UIView *item in [_mainView subviews]) {
        [item removeFromSuperview];
    }
}

-(void)loadView {
    [super loadView];
    
    _mainView = [[ZTTouchableView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    
    [self setView: _mainView];
}

-(void)viewDidLoad {
    _course = [CARDSERVICE getCourse:@"test"]; //TODO:need implementation
    [_course retain];
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
    [self showNextCard: FALSE];
}

-(void)showNextCard:(BOOL)prevSuccessful {
    if (_currentView != nil) {
        [_course moveNext: prevSuccessful];
        [_currentView release];
    }
    ZTCardStatus status = [[_course currentCard] status];
    switch (status) {
        case ZTCardStatusNew:
            _currentView = [[ZTNewCardView alloc] init];
            break;
        case ZTCardStatusLearn:
            _currentView = [[ZTStackedCardView alloc] init];
            break;
    }
    [_currentView setDelegate:self];
    [self clearView];
    [_currentView show:_mainView];
}

-(void)complete:(BOOL)success {
    NSLog(@"%@", success ? @"success" : @"fail");
    [self showNextCard: success];
}

-(NSEnumerator *)packet {
    return [_course currentPacket];
}

-(ZTCard *)card {
    return [_course currentCard];
}

-(void)dealloc {
    [_mainView release];
    [_statView release];
    [_currentView release];
    [_course release];
    
    [super dealloc];
}

@end
