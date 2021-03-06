//
//  Article.m
//  zTutor
//
//  Created by Mochalov Ivan on 13.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Article.h"


@implementation ZTArticle 

-(id)initWithLabel:(NSString *)label: (char *)dicPoint {
    self = [super init];
    if (self) {
        _label = label;
        [_label retain];
        
        char *bytesReader = dicPoint;
        for (int i = 0; i < 8; i++) {
            _dicPoint[i] = *bytesReader;
            bytesReader++;
        }
    }
    return self;
}

-(NSString *)getName {
    return _label;
}

-(NSRange)getPoint {
    
    int index = 0;
    int length = 0;
    
    unsigned char indexData[] = { _dicPoint[3], _dicPoint[2], _dicPoint[1], _dicPoint[0] };
    index = *((NSInteger *)indexData);
    
    unsigned char lengthData[] = { _dicPoint[7], _dicPoint[6], _dicPoint[5], _dicPoint[4] };
    length = *((NSInteger *)lengthData);
    
    return NSMakeRange(index, length);
}

-(void)dealloc {
    [_label release];
    
    [super dealloc];
}

@end
