//
//  CardService.m
//  zTutor
//
//  Created by Mochalov Ivan on 08/02/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CardService.h"

@implementation ZTCardService

- (void)launch {

}

-(ZTStatistics *)getStatistics {
    //TODO: need implementation
    return [[[ZTStatistics alloc] initWithValues: 100: 100] autorelease];
}

-(ZTCardCourse *)getCourse:(NSString *)name {
    ZTCardCourse *res = [[ZTCardCourse alloc]init];
    return [res autorelease];
}

@end