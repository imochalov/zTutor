//
//  zSearchServiceFixture.h
//  zTutor
//
//  Created by Ivan Mochalov on 11.10.11.
//  Copyright 2011 iva-mochalov@yandex.ru. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "zSearchService.h"
#import "zServiceManager.h"
#import "WithServicesTestCase.h"

@interface zDataBaseMock: NSObject<IZDataBaseService> {
@private
    NSMutableArray *_cards;
}
@end

@interface zSearchServiceTestCase : WithServicesTestCase {
@private 
    zSearchService *_service;
}

@end
