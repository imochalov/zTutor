//
//  zArticle.h
//  zTutor
//
//  Created by Ivan Mochalov on 05.10.11.
//  Copyright 2011 iva-mochalov@yandex.ru. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "zDictionary.h"

@interface zArticle : NSObject

@property (readonly) zDictionary *dictionary;

@property (readonly) NSEnumerator *translations;

@end
