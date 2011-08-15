//
//  CardService.h
//  zTutor
//
//  Created by Mochalov Ivan on 08/02/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IService.h"
#import "Statistics.h"


@interface ZTCardService : NSObject<IZTService> {

}

-(ZTStatistics *)getStatistics;

@end