//
//  SearchService.m
//  zTutor
//
//  Created by Mochalov Ivan on 08/02/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SearchService.h"

#import "Article.h"


@implementation ZTSearchService

NSMutableArray *_index;

- (void)loadIndex {
    const int _INDEX_CAPECITY = 40000;
    _index = [[NSMutableArray alloc] initWithCapacity:_INDEX_CAPECITY];
    
    //TODO: need load idx file;
    
    //NSString *idxPath = [DOCUMENTS stringByAppendingPathComponent:@"LingvoUniversalER.idx"];
    NSString *idxPath = [[NSBundle mainBundle] pathForResource:@"LingvoUniversalER.idx" ofType:nil];
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForReadingAtPath:idxPath];
    NSData *buffer = [fileHandle readDataToEndOfFile];
    int length = [buffer length];
    char *bytes = malloc(sizeof(char) * length);
    char *nameBytes = bytes;
    [buffer getBytes:bytes];
    for(int i = 0; i < length; i++) {
        char c = *bytes;
        if (c == '\0') {
            int nameLength = bytes - nameBytes;
            NSString *myString = [[NSString alloc] initWithBytes:nameBytes 
                                                          length:nameLength 
                                                        encoding:NSUTF8StringEncoding];
            nameBytes += nameLength + 1;
            [_index addObject:[[ZTArticle alloc] initWithLabel:myString :nameBytes]];
            [myString release];
            
            i += 8;
            bytes += 8;
            //nameBytes = bytes;
            nameBytes += 8;
        }
        bytes++;
    }
    bytes -= length;
    free(bytes);
    [fileHandle closeFile];
}

- (void)launch {
    
    [self loadIndex];
}

- (NSArray *)startWith: (NSString *)sample {
    NSMutableArray *res = [[NSMutableArray alloc]initWithCapacity:10];
    for(ZTArticle *item in _index)
        if ([[item getName] hasPrefix:sample])
            [res addObject:item];
    return [res autorelease];
}

-(void)dealloc {
    for(ZTArticle *item in _index)
        [item release];
    [_index release];
    
    [super dealloc];
}


@end