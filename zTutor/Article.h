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
    char _dicPoint[8];
}

-(id)initWithLabel:(NSString *)label: (char *)dicPoint;

-(NSString *)getName;

-(NSRange)getPoint;

@end
