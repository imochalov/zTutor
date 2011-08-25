//
//  Card.h
//  zTutor
//
//  Created by Mochalov Ivan on 08/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//


typedef enum {
    ZTCardStatusNew,
    ZTCardStatusLearn,
    ZTCardStatusComplete
} ZTCardStatus;

@interface ZTCard: NSObject {
    @private
    NSString *_word;
    NSEnumerator *_translate;
    ZTCardStatus _status;
}

-(id)initWithTranslate: (NSString *)word translate:(NSString *)translate andStatus:(ZTCardStatus)status;

@property(nonatomic,readonly) NSString *word;

@property(nonatomic,readonly) NSEnumerator *translate;

@property(nonatomic,readonly) ZTCardStatus status;

@end