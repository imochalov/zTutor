//
//  ICardView.h
//  zTutor
//
//  Created by Mochalov Ivan on 08/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ICardPacket.h"
#import "ICard.h"

@protocol IZTCardViewDelegate <NSObject>

-(void)complete:(BOOL)success;

@property(nonatomic,readonly) id<IZTCardPacket> *packet;

@property(nonatomic,readonly) id<IZTCard> *card;

@end

@protocol IZTCardView

-(void)show:(UIView *)view;

@property(nonatomic,assign) id<IZTCardViewDelegate> delegate;

@end