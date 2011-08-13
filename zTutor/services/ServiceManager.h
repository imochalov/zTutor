//
//  ServiceManager.h
//  zTutor
//
//  Created by Mochalov Ivan on 13.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IService.h"


@interface ZTServiceManager : NSObject {
    
}

+(void)enshureService:(Class) type;

+(id<IZTService> *)getInstance:(Class) type;

@end
