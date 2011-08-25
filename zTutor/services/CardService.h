//
//  CardService.h
//  zTutor
//
//  Created by Mochalov Ivan on 08/02/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IService.h"
#import "CardCourse.h"


@interface ZTCardCourseDataSource : NSObject<IZTCardCourseDataSource> {
    @private
    NSString *_path;
    unsigned long _index;
}

-(id)initWithFilePath:(NSString *)path;

@end

@interface ZTCardService : NSObject<IZTService> {

}

-(ZTCardCourse *)getCourse:(NSString *)name;

@end