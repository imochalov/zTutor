//
//  zStatistics.h
//  zTutor
//
//  Created by Ivan Mochalov on 10.10.11.
//  Copyright 2011 iva-mochalov@yandex.ru. All rights reserved.
//

#import "zDBRecord.h"

@interface zStatistics : zDBRecord

@property (readonly) NSInteger *total;

@property (readonly) NSInteger *known;

@end
