//
//  CardService.m
//  zTutor
//
//  Created by Mochalov Ivan on 08/02/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CardService.h"

@implementation ZTCardCourseDataSource


- (id)initWithFilePath:(NSString *)path {
    self = [super init];
    if (self != nil) {
        [path retain];
        _path = path;
        _index = 0;
    }
    return self;
}

- (ZTCard *)readCard {
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForReadingAtPath:_path];
    [fileHandle seekToFileOffset:_index];
    char *bytes = malloc(sizeof(char));
    char *nameBytes = malloc(sizeof(char) * 255);
    uint i = 0;
    do {
        NSData *buffer = [fileHandle readDataOfLength:1];
        [buffer getBytes:bytes];
        i++;
        /*if (i % 255 == 0) {
            char *oldNameBytes = nameBytes;
            nameBytes = malloc(sizeof(char) * (i / 255 + 1) * 255);
            
        }*/ //TODO: need review (if 255 is too small size)
        *nameBytes = *bytes;
        nameBytes++;
    } while (*bytes != '\0');
    NSString *word = [[NSString alloc] initWithBytes:nameBytes
                                              length:i - 1 
                                            encoding:NSUTF8StringEncoding];
    
    free(bytes);
    nameBytes -= i;
    free(nameBytes);
    _index += i + 1;
    
    ZTCardStatus status = ZTCardStatusNew; //TODO: need review
    NSString *translate = @"test translate";// TODO: need review
    ZTCard *res = [[ZTCard alloc] initWithTranslate:word translate:translate andStatus:status];
    [word release];
    return [res autorelease];
}

- (void)writeCard:(ZTCard *)card {
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForWritingAtPath:_path];
    [fileHandle seekToEndOfFile];
    NSString *word = [card word];
    uint length = [word length] + 1;
    char *bytes = malloc(sizeof(char) * length);
    [word getBytes:bytes maxLength:NULL usedLength:NULL encoding:NSUTF8StringEncoding 
            options:NSStringEncodingConversionAllowLossy 
              range:NSRangeFromString(word) remainingRange:NULL];
    NSData *buffer = [[NSData alloc] initWithBytes: bytes length:length];
    [fileHandle writeData:buffer];
    [buffer release];
    free(bytes);
    [fileHandle closeFile];
}

- (ZTStatistics *)readStatistics {
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForReadingAtPath:_path];
    NSData *buffer = [fileHandle readDataOfLength:8];
    char *bytes = malloc(sizeof(char) * 8);
    [buffer getBytes:bytes];
    int known = *((NSInteger *)bytes);
    bytes += 4;
    int remain = *((NSInteger *)bytes);
    bytes -= 4;
    free(bytes);
    [fileHandle closeFile];
    return [[[ZTStatistics alloc] initWithValues: known: remain] autorelease];
}

- (void)writeStatistics:(ZTStatistics *)statistics {
    //TODO: need implementation
}

- (void)dealloc {
    [_path release];
    
    [super dealloc];
}

@end

@implementation ZTCardService

- (void)launch {

}

-(ZTCardCourse *)getCourse:(NSString *)name {
    ZTCardCourse *res = [[ZTCardCourse alloc]init];
    return [res autorelease];
}

@end