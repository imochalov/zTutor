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
#import "StackedCardView.h"


@interface ZTLearnViewController : UIViewController<IZTCardViewDelegate, IZTStatisticsViewDelegate> {
    @private
        UIView *_mainView;
    
        ZTCardCourse *_course;
        ZTStatisticsCardView *_statView;
        ZTStackedCardView *_currentView;
}

-(ZTStatisticsCardView *)getStatisticsView;

@end
