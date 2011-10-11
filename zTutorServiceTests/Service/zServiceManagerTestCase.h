//
//  zServiceManagerFixture.h
//  zTutor
//
//  Created by Ivan Mochalov on 11.10.11.
//  Copyright 2011 iva-mochalov@yandex.ru. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IZService.h"
#import "zServiceManager.h"

@interface ServiceStub: NSObject<IZService>{
}
@end

@interface zServiceManagerTestCase : NSObject
@private
    zServiceManager *_pool;
@end
