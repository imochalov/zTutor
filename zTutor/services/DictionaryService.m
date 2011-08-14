//
//  DictionaryService.m
//  zTutor
//
//  Created by Mochalov Ivan on 08/02/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DictionaryService.h"

@implementation ZTDictionaryService

- (void)launch {
    
}

-(NSString *)getContent:(ZTArticle *)article {
    
    //NSString *dicPath = [DOCUMENTS stringByAppendingPathComponent:@"LingvoUniversalER.dict.ungz"];
    NSString *dicPath = [[NSBundle mainBundle] pathForResource:@"LingvoUniversalER.dict.ungz" ofType:nil];
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForReadingAtPath:dicPath];
    NSRange range = [article getPoint];
    [fileHandle seekToFileOffset:range.location];
    NSData * data = [fileHandle readDataOfLength:range.length];
    [fileHandle closeFile];
    char *bytes = malloc(sizeof(char) * range.length);
    [data getBytes:bytes length:range.length];
    NSString * res = [[NSString alloc] initWithBytes:bytes length:range.length encoding:NSUTF8StringEncoding];
    //NSString * res = [[NSString alloc] initWithBytes:bytes length:range.length encoding:nil];
    return [res autorelease];
    
    //TODO:need implementation
    //return @"test content";
}

@end