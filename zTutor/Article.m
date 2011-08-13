//
//  Article.m
//  zTutor
//
//  Created by Mochalov Ivan on 13.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Article.h"


@implementation ZTArticle 

-(id)initWithLabel:(NSString *)label: (NSData *)dicPoint {
    self = [super init];
    if (self) {
        _label = label;
        [_label retain];
        _dicPoint = dicPoint;
        [_dicPoint retain];
    }
    return self;
}

-(NSString *)getName {
    return _label;
}

-(NSRange)getPoint {
    char *bytes;
    [_dicPoint getBytes:bytes];
    
    int index = 0;
    for(int i = 0; i < 4; i++) {
        index |= (*bytes << i);
        bytes++;
    }
    
    int length = 0;
    for(int i = 0; i < 4; i++) {
        length |= (*bytes << i);
        bytes++;
    }
    
    return NSMakeRange(index, length);
}

-(void)dealloc {
    [_label release];
    [_dicPoint release];
    
    [super dealloc];
}

@end
