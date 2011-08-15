//
//  Statistics.m
//  zTutor
//
//  Created by Mochalov Ivan on 15.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Statistics.h"


@implementation ZTStatistics

-(id)initWithValues:(int)known: (int)remain {
    self = [super init];
    if (self) {
        _known = known;
        _remain = remain;
    }
    return self;
}

-(int)getKnown {
    return _known;
}

-(int)getRemain {
    return _remain;
}

@end
