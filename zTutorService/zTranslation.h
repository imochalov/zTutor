//
//  zTranslation.h
//  zTutor
//
//  Created by Ivan Mochalov on 05.10.11.
//  Copyright 2011 iva-mochalov@yandex.ru. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "zGrammarType.h"

@interface zTranslation : NSObject

@property (readonly) zGrammarType type;

@property (readonly) NSEnumerator *values;

@property (readonly) NSString *example;

@end
