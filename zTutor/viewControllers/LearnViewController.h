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


@interface ZTLearnViewController : UIViewController<IZTCardViewDelegate, IZTStatisticsViewDelegate> {

}

-(ZTStatisticsCardView *)getStatisticsView;

@end
