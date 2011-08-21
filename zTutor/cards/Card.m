//
//  Card.m
//  zTutor
//
//  Created by Mochalov Ivan on 21.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Card.h"


@implementation ZTCard 

-(id)initWithTranslate:(NSString *)word translate:(NSString *)translate {
    self = [super init];
    if (self != nil) {
        _word = word;
        [_word retain];
        [translate retain];
        _translate = [[NSArray alloc] initWithObjects:translate, nil];
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
    return [_translate objectEnumerator];
}

-(void)dealloc {
    [_word release];
    for (NSString *item in _translate) {
        [item release];
    }
    [_translate release];
    
    [super dealloc];
}

@end
