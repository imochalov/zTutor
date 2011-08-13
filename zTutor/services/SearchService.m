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
    
    NSString *idxPath = [DOCUMENTS stringByAppendingPathComponent:@"LingvoUniversalER.idx"];
    NSFileHandle * fileHandle = [NSFileHandle fileHandleForReadingAtPath:idxPath];
    NSData * buffer = nil;
    NSMutableString *name = [[NSMutableString alloc] initWithCapacity:10];
    while ((buffer = [fileHandle readDataOfLength:1])) {
        Byte c;
        [buffer getBytes:&c range: NSMakeRange(0, 1)];
        if (c  == '\0') {
            [_index addObject: name];
            [name release];
            name = [[NSMutableString alloc] initWithCapacity:10];
            
            [fileHandle readDataOfLength:8];
        }
        else {
            NSString* myString = [[NSString alloc] initWithBytes:[buffer bytes] 
                                                          length:[buffer length] 
                                                        encoding:NSUTF8StringEncoding];
            [name appendString:myString];
            [myString release];
        }
        
    }
    [name release];
}

- (void)launch {
    
    [self loadIndex];
}

- (NSArray *)startWith: (NSString *)sample {
    NSMutableArray *res = [[NSMutableArray alloc]initWithCapacity:10];
    for(id item in _index)
        if ([item startWith:sample])
            [res addObject:item];
    return [res autorelease];
}


@end