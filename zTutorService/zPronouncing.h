//
//  zPronouncing.h
//  zTutor
//
//  Created by Ivan Mochalov on 10.10.11.
//  Copyright 2011 iva-mochalov@yandex.ru. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "zDBRecord.h"

@interface zPronouncing : zDBRecord

@property (readonly) NSString *transcription;

@property (readonly) NSData *audio;

@end
