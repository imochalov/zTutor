//
//  zServiceManager.m
//  zTutor
//
//  Created by Ivan Mochalov on 11.10.11.
//  Copyright 2011 iva-mochalov@yandex.ru. All rights reserved.
//

#import "zServiceManager.h"

@implementation zServiceManager

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

+(void)enshureService:(Class) type byName: (NSString *)name {
    if (![type conformsToProtocol:@protocol(IZService)])
        @throw [NSException exceptionWithName:@"Invalid Interface" 
                                       reason:@"IZTService protocol implementation excpected" userInfo:nil];
    id obj = [_pool objectForKey:name];
    if (obj == nil) {
        obj = [[type alloc] init];
        [obj launch];
        [_pool setObject:obj forKey:name];
    }
}

+(id<IZService> *)getInstance:(NSString *)name {
    return (id<IZTService> *)[_pool objectForKey:name];
}

+(void)dealloc {
    for(id obj in [_pool allValues])
        [obj release];
    [_pool removeAllObjects];
    [_pool release];
    
    [super dealloc];
}

@end
