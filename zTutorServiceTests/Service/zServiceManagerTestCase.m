//
//  zServiceManagerFixture.m
//  zTutor
//
//  Created by Ivan Mochalov on 11.10.11.
//  Copyright 2011 iva-mochalov@yandex.ru. All rights reserved.
//

#import "zServiceManagerTestCase.h"

@implementation ServiceStub 

-(void)launch {
    
}

@end

@implementation zServiceManagerTestCase

-(void)setUp {
    [super setUp];
    
    @try
    {
        _pool = [[zServiceManager alloc] init];
    }
    @catch(id ex) {
        
    }
}

-(void)tearDown {
    [_pool release];
    
    [super tearDown];
}

-(void)testIncorrectType {
    
}

-(void)testDoubleInitialization {
    STAssertThrows([[zServiceManager alloc] init], @"ServiceManager can be initalize only one time");
}

-(void)testSingletone {
    id *service = [zServiceManager getInstance:NSClassFromString(@"ServiceStub")];
    STAssertNotNil((id)service, @"Service must be created");
    id *service2 = [zServiceManager getInstance:NSClassFromString(@"ServiceStub")];
    STAssertEquals(service, service2, @"ServiceManager must hold singletones");
}

@end
