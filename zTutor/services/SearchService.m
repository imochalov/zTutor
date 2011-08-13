//
//  SearchService.m
//  zTutor
//
//  Created by Mochalov Ivan on 08/02/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SearchService.h"


@implementation ZTSearchService

NSMutableArray *_index;

- (void)loadIndex {
    const int _INDEX_CAPECITY = 40000;
    _index = [[NSMutableArray alloc] initWithCapacity:_INDEX_CAPECITY];
    
    //TODO: need load idx file;
}

- (void)launch {
    
    [self loadIndex];
}


@end