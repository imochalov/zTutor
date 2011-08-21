//
//  Card.h
//  zTutor
//
//  Created by Mochalov Ivan on 08/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

@interface ZTCard: NSObject {
    @private
        NSString *_word;
        NSArray *_translate;
}

-(id)initWithTranslate: (NSString *)word translate:(NSString *)translate;

@property(nonatomic,readonly) NSString *word;

@property(nonatomic,readonly) NSEnumerator *translate;

@end