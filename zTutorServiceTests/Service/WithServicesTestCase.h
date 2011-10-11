//
//  WithServicesTestCase.h
//  zTutor
//
//  Created by Ivan Mochalov on 11.10.11.
//  Copyright 2011 iva-mochalov@yandex.ru. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "zServiceManager.h"

@interface WithServicesTestCase : SenTestCase {
@private
    zServiceManager *_servicePool;
}

@end
