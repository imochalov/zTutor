//
//  CardCourse.m
//  zTutor
//
//  Created by Mochalov Ivan on 20.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CardCourse.h"


@implementation ZTCardCourse

-(id)init {
    self = [super init];
    if (self != nil) {
        [self loadNextCard];
    }
    return self;
}

-(ZTStatistics *)getStatistics {
    ZTStatistics *res = [[ZTStatistics alloc] initWithValues:completed:remain];
    return [res autorelease];
}

-(ZTCard *)currentCard {
    return _card;
}

-(ZTCardPacket *)currentPacket {
    return _packet;
}

-(ZTCardStatus)currentStatus {
    return _status;
}

-(BOOL)moveNext:(BOOL)seccessful {
    [self loadNextCard];
    return _card != nil;
}

-(void)loadNextCard {
    //TODO: need implementation
    if (_card == nil) {
        completed = 100;
        remain = 200;
        _card = [[ZTCard alloc] initWithTranslate:@"my" translate:@"test"];
        _cardsArr = [[NSArray alloc] 
                              initWithObjects:
                              [[ZTCard alloc] initWithTranslate:@"my" translate:@"мой"], 
                              [[ZTCard alloc] initWithTranslate:@"window" translate:@"окно"], 
                              [[ZTCard alloc] initWithTranslate:@"table" translate:@"стол"], 
                              nil];
        _packet = [[ZTCardPacket alloc] initWithCards:[_cardsArr objectEnumerator]];
        _status = ZTCardStatusNew;
    }
}

-(void)dealloc {
    [_card release];
    [_packet release];
    for (ZTCard *item in _cardsArr) {
        [item release];
    }
    [_cardsArr release];
    
    [super dealloc];
}

@end
