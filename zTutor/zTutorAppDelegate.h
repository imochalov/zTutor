//
//  zTutorAppDelegate.h
//  zTutor
//
//  Created by Mochalov Ivan on 07/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface zTutorAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {

@private
    UIWindow *_window;
    
    UITabBarController *_rootController;
}

@end