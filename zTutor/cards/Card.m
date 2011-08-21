//
//  Card.m
//  zTutor
//
//  Created by Mochalov Ivan on 21.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Card.h"


@implementation ZTCard 

NSString *_word;
NSEnumerator *_translate;

-(id)initWithTranslate:(NSString *)word translate:(NSString *)translate {
    self = [super init];
    if (self != nil) {
        _word = word;
        [_word retain];
        _translate = [[NSEnumerator alloc] init];
        //[_translate
        //[_translate retain];
        //TODO: need implementation
    }
    return self;
}

-(NSString *)word {
    return _word;
}

-(NSEnumerator *)translate {
    return _translate;
}

-(void)dealloc {
    [_word release];
    [_translate release];
    
    [super dealloc];
}

@end
