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
    ZTStatistics *res = [[ZTStatistics alloc] initWithValues:0:0];
    return [res autorelease];
}

-(ZTCard *)currentCard {
    return _card;
}

-(NSEnumerator *)currentPacket {
    return [_cardsArr objectEnumerator];
}

-(BOOL)moveNext:(BOOL)seccessful {
    [self loadNextCard];
    return _card != nil;
}

-(void)loadNextCard {
    //TODO: need implementation
    if (_card == nil) {
        _card = [[ZTCard alloc] initWithTranslate:@"my" translate:@"test"];
        _cardsArr = [[NSArray alloc] 
                              initWithObjects:
                              [[ZTCard alloc] initWithTranslate:@"my" translate:@"мой"], 
                              [[ZTCard alloc] initWithTranslate:@"window" translate:@"окно"], 
                              [[ZTCard alloc] initWithTranslate:@"table" translate:@"стол"], 
                              nil];
    }
}

-(void)dealloc {
    [_card release];
    for (ZTCard *item in _cardsArr) {
        [item release];
    }
    [_cardsArr release];
    
    [super dealloc];
}

@end
