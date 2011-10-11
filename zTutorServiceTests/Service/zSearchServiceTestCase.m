//
//  zSearchServiceFixture.m
//  zTutor
//
//  Created by Ivan Mochalov on 11.10.11.
//  Copyright 2011 iva-mochalov@yandex.ru. All rights reserved.
//

#import "zSearchServiceTestCase.h"
#import "zServiceManager.h"

@implementation zSearchServiceTestCase

-(void)setUp {
    [super setUp];
    
    @try
    {
        [zServiceManager enshureService:NSClassFromString(@"zDataBaseMock") withName:@"IDataBaseService"];
        
        _service = [[zSearchService alloc] init];
    }
    @catch(id ex) {
        
    }
}

-(void)tearDown {
    [_service release];
    
    [super tearDown];
}

-(void)testSimpleFind {
    zCardBrief *card = [_service find:@"table"];
    STAssertNotNil(card, @"Service must find card");
    STAssertEquals(10, [card getKey], @"ServiceManager must hold singletones");
    STAssertEquals(@"table", [card getWord], @"ServiceManager must hold singletones");
}


@end
