//
//  main.m
//  zTutor
//
//  Created by Mochalov Ivan on 07/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

//#import <UIKit/UIKit.h>
#import "services/IService.h"
#import "services/SearchService.h"
#import "services/ScheduleService.h"
#import "services/SynchronizationService.h"
#import "CardService.h"
#import "DictionaryService.h"
#import "NetworkService.h"
#import "ServiceManager.h"

void initializeServices() {
    [ZTServiceManager enshureService:NSClassFromString(@"ZTNetworkService")];
    [ZTServiceManager enshureService:NSClassFromString(@"ZTDictionaryService")];
    [ZTServiceManager enshureService:NSClassFromString(@"ZTSearchService")];
    [ZTServiceManager enshureService:NSClassFromString(@"ZTCardService")];
    [ZTServiceManager enshureService:NSClassFromString(@"ZTScheduleService")];
    [ZTServiceManager enshureService:NSClassFromString(@"ZTSynchronizationService")];
}

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    ZTServiceManager *servicePool = [[ZTServiceManager alloc] init];
    initializeServices();
    int retVal = UIApplicationMain(argc, argv, @"UIApplication",@"zTutorAppDelegate");
    [servicePool release];
    [pool release];
    return retVal;
}