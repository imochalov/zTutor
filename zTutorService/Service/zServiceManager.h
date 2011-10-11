//
//  zServiceManager.h
//  zTutor
//
//  Created by Ivan Mochalov on 11.10.11.
//  Copyright 2011 iva-mochalov@yandex.ru. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IZService.h"

@interface zServiceManager : NSObject

+(void)enshureService:(Class) type byName: (NSString *)name;

+(id<IZService> *)getInstance: (NSString *)name;

@end
