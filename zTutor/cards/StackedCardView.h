//
//  StackedCardView.h
//  zTutor
//
//  Created by Mochalov Ivan on 17.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ICardView.h"


@interface ZTStackedCardView : NSObject <IZTCardView,UITableViewDelegate,UITableViewDataSource> {
    @private
        id<IZTCardViewDelegate> _delegate;
    
        NSMutableArray *_translates;
}

-(void)prepareTranslates;

@end
