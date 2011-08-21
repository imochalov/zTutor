//
//  CardCourse.h
//  zTutor
//
//  Created by Mochalov Ivan on 20.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Statistics.h"
#import "Card.h"
#import "CardPacket.h"


typedef enum {
    ZTCardStatusNew,
    ZTCardStatusLearn
} ZTCardStatus;

@interface ZTCardCourse : NSObject {
    @private
        int completed;
        int remain;
    
        ZTCard *_card;
        ZTCardPacket *_packet;
        ZTCardStatus _status;
        NSArray *_cardsArr;
}

-(ZTStatistics *)getStatistics;

@property(nonatomic,readonly) ZTCard *currentCard;

@property(nonatomic,readonly) ZTCardPacket *currentPacket;

@property(nonatomic,readonly) ZTCardStatus currentStatus;

-(BOOL)moveNext:(BOOL)seccessful;

-(void)loadNextCard;

@end
