//
//  ICardView.h
//  zTutor
//
//  Created by Mochalov Ivan on 08/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CardPacket.h"
#import "Card.h"

@protocol IZTCardViewDelegate <NSObject>

-(void)complete:(BOOL)success;

@property(nonatomic,readonly) ZTCardPacket *packet;

@property(nonatomic,readonly) ZTCard *card;

@end

@protocol IZTCardView

-(void)show:(UIView *)view;

@property(nonatomic,assign) id<IZTCardViewDelegate> delegate;

@end