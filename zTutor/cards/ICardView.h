//
//  ICardView.h
//  zTutor
//
//  Created by Mochalov Ivan on 08/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Card.h"
#import "TouchableView.h"


@protocol IZTCardViewDelegate <NSObject>

-(void)complete:(BOOL)success;

@property(nonatomic,readonly) NSEnumerator *packet;

@property(nonatomic,readonly) ZTCard *card;

@end


@protocol IZTCardView

-(void)show:(ZTTouchableView *)view;

@property(nonatomic,assign) id<IZTCardViewDelegate> delegate;

@end