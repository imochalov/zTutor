//
//  Article.h
//  zTutor
//
//  Created by Mochalov Ivan on 13.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ZTArticle : NSObject {
@private 
    NSString *_label;
    NSData *_dicPoint;
}

-(id)initWithLabel:(NSString *)label: (NSData *)dicPoint;

-(NSString *)getName;

-(NSRange)getPoint;

@end
