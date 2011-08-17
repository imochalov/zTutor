//
//  ICard.h
//  zTutor
//
//  Created by Mochalov Ivan on 08/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

@protocol IZTCard

@property(nonatomic,readonly) NSString *word;
@property(nonatomic,readonly) NSEnumerator *translate;

@end