//
//  ServiceManagerTestCase.m
//  zTutor
//
//  Created by Mochalov Ivan on 13.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ServiceManagerTestCase.h"

@implementation ServiceStub 

-(void)launch {
    
}

@end

@implementation ServiceManagerTestCase

-(void)setUp {
    [super setUp];
    
    @try
    {
        _pool = [[ZTServiceManager alloc] init];
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
    STAssertThrows([[ZTServiceManager alloc] init], @"ServiceManager can be initalize only one time");
}

-(void)testSingletone {
    id *service = [ZTServiceManager getInstance:NSClassFromString(@"ServiceStub")];
    STAssertNotNil((id)service, @"Service must be created");
    id *service2 = [ZTServiceManager getInstance:NSClassFromString(@"ServiceStub")];
    STAssertEquals(service, service2, @"ServiceManager must hold singletones");
}

@end
