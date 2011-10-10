//
//  zSearchService.h
//  zTutor
//
//  Created by Ivan Mochalov on 10.10.11.
//  Copyright 2011 iva-mochalov@yandex.ru. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface zSearchService : NSObject

-(NSEnumerator *)find: (NSString *)expression;

@end
