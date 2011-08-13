//
//  ServiceManager.m
//  zTutor
//
//  Created by Mochalov Ivan on 13.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ServiceManager.h"


@implementation ZTServiceManager

static NSMutableDictionary *_pool;

- (id)init {
    self = [super init];
    if (self) {
        if (_pool != nil)
            @throw [NSException exceptionWithName:@"Invalid Operation" reason:@"Allready initalized" userInfo:nil];
        _pool = [[NSMutableDictionary alloc] initWithCapacity:10];
    }
    return self;
}

+(void)enshureService:(Class) type {
    if (![type conformsToProtocol:@protocol(IZTService)])
        @throw [NSException exceptionWithName:@"Invalid Interface" 
                reason:@"IZTService protocol implementation excpected" userInfo:nil];
    id obj = [_pool objectForKey:type];
    if (obj == nil) {
        obj = [[type alloc] init];
        [obj launch];
        [_pool setObject:obj forKey:type];
    }
}

+(id<IZTService> *)getInstance:(Class)type {
    [self enshureService:type];
    return (id<IZTService> *)[_pool objectForKey:type];
}

+(void)dealloc {
    for(id obj in [_pool allValues])
        [obj release];
    [_pool removeAllObjects];
    [_pool release];
    
    [super dealloc];
}

@end
