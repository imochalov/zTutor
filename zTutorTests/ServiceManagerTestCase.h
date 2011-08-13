//
//  ServiceManagerTestCase.h
//  zTutor
//
//  Created by Mochalov Ivan on 13.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ServiceManager.h"
#import <SenTestingKit/SenTestingKit.h>

@interface ServiceStub: NSObject<IZTService>{
}
@end

@interface ServiceManagerTestCase : SenTestCase {
    @private
    ZTServiceManager *_pool;
}

@end
