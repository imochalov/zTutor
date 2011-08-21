//
//  CardPacket.m
//  zTutor
//
//  Created by Mochalov Ivan on 20.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CardPacket.h"


@implementation ZTCardPacket 

-(id)initWithCards:(NSEnumerator *)items {
    self = [super init];
    if (self != nil) {
        _items = items;
        [_items retain];
    }
    return self;
}

-(NSEnumerator *)cards {
    return _items;
}

-(void)dealloc {
    [_items release];
    
    [super dealloc];
}

@end
