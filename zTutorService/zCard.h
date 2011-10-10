//
//  zCard.h
//  zTutor
//
//  Created by Ivan Mochalov on 05.10.11.
//  Copyright 2011 iva-mochalov@yandex.ru. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "zDBRecord.h"


@interface zCard : zDBRecord

@property (readonly) NSInteger *key;

@property (readonly) NSString *word;

@property (readonly) NSEnumerator *articles;

@property (readonly) zPronouncing *pronouncing;

@end
