//
//  NewCardView.h
//  zTutor
//
//  Created by Mochalov Ivan on 17.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ICardView.h"


@interface ZTNewCardView : NSObject<IZTCardView> {
@private
    id<IZTCardViewDelegate> _delegate;
}

@end
