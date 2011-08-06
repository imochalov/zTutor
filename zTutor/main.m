//
//  main.m
//  zTutor
//
//  Created by Mochalov Ivan on 07/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

//#import <UIKit/UIKit.h>
#import "services/BaseService.h"
#import "services/SearchService.h"
#import "services/ScheduleService.h"
#import "services/SynchronizationService.h"
#import "CardService.h"
#import "DictionaryService.h"
#import "NetworkService.h"

void initializeServices() {
    [ZTNetworkService launch];
    [ZTDictionaryService launch];
    [ZTSearchService launch];
    [ZTCardService launch];
    [ZTScheduleService launch];
    [ZTSynchronizationService launch];
}

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    initializeServices();
    int retVal = UIApplicationMain(argc, argv, @"UIApplication",@"zTutorAppDelegate");
    [pool release];
    return retVal;

}