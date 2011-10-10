//
//  zDataBaseService.h
//  zTutor
//
//  Created by Ivan Mochalov on 10.10.11.
//  Copyright 2011 iva-mochalov@yandex.ru. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface zDataBaseService : NSObject

-(NSEnumerator *)Select: (NSString *)elementType;

-(void)Insert: (NSEnumerator *)records;

-(void)Update: (NSEnumerator *)records;

-(void)Delete: (NSEnumerator *)records;

@end
