//
//  WithServicesTestCase.m
//  zTutor
//
//  Created by Ivan Mochalov on 11.10.11.
//  Copyright 2011 iva-mochalov@yandex.ru. All rights reserved.
//

#import "WithServicesTestCase.h"

@implementation WithServicesTestCase


-(void)setUp {
    [super setUp];
    
    @try
    {
        _servicePool = [[zServiceManager alloc] init];    }
    @catch(id ex) {
        
    }
}

-(void)tearDown {
    [_servicePool release];
    
    [super tearDown];
}


@end
