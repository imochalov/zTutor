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

@protocol IZTCardCourseDataSource <NSObject>

-(ZTCard *)readCard;

-(void)writeCard:(ZTCard *)card;

-(ZTStatistics *)readStatistics;

-(void)writeStatistics:(ZTStatistics *)statistics;

@end

@interface ZTCardCourse : NSObject {
    @private
        ZTCard *_card;
        NSArray *_cardsArr;
}

@property(nonatomic,readonly) NSString *name;

@property(nonatomic,assign) id<IZTCardCourseDataSource> dataSource;

@property(nonatomic,readonly) ZTStatistics *statistics;

@property(nonatomic,readonly) ZTCard *currentCard;

@property(nonatomic,readonly) NSEnumerator *currentPacket;

-(BOOL)moveNext:(BOOL)seccessful;

-(void)loadNextCard;

@end
