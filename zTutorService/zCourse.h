//
//  zCourse.h
//  zTutor
//
//  Created by Ivan Mochalov on 10.10.11.
//  Copyright 2011 iva-mochalov@yandex.ru. All rights reserved.
//

#import "zDBRecord.h"
#import "zStatistics.h"

@interface zCourse : zDBRecord

@property (readonly) NSString *name;

@property (readonly) NSString *description;

@property (readonly) zStatistics *statistics;

@end
