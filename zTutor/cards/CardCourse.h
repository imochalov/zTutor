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
    
}

-(ZTStatistics *)getStatistics;

@property(nonatomic,readonly) ZTCard *currentCard;

@property(nonatomic,readonly) ZTCardPacket *currentPacket;

@property(nonatomic,readonly) ZTCardStatus currentStatus;

-(BOOL)moveNext:(BOOL)seccessful;

@end
