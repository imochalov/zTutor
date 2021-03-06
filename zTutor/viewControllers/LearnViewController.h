//
//  LearnViewController.h
//  zTutor
//
//  Created by Mochalov Ivan on 08/06/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ICardView.h"
#import "StatisticsCardView.h"
#import "CardCourse.h"
#import "ICardView.h"
#import "TouchableView.h";


@interface ZTLearnViewController : UIViewController<IZTCardViewDelegate, IZTStatisticsViewDelegate> {
    @private
        ZTTouchableView *_mainView;
    
        ZTCardCourse *_course;
        ZTStatisticsCardView *_statView;
        NSObject<IZTCardView> *_currentView;
}

-(ZTStatisticsCardView *)getStatisticsView;

-(void)showNextCard:(BOOL)prevSuccessful;

@end
