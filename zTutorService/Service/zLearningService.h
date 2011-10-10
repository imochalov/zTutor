//
//  zLearningService.h
//  zTutor
//
//  Created by Ivan Mochalov on 10.10.11.
//  Copyright 2011 iva-mochalov@yandex.ru. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "zCard.h"

@interface zLearningService : NSObject

@property (readonly) NSEnumerator *courses;

-(zCard *)getNextCard;

-(void)updateCard:(zCard *)card withStatus: (bool) status;

@end
