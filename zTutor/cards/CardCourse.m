//
//  CardCourse.m
//  zTutor
//
//  Created by Mochalov Ivan on 20.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CardCourse.h"


@implementation ZTCardCourse

int completed;
int remain;

ZTCard *_card;
ZTCardPacket *_packet;
ZTCardStatus _status;

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
        _packet = [[ZTCardPacket alloc] init]; //TODO: need review
        _status = ZTCardStatusNew;
    }
}

-(void)dealloc {
    [_card release];
    [_packet release];
    
    [super dealloc];
}

@end
