//
//  zTutorAppDelegate.m
//  zTutor
//
//  Created by Mochalov Ivan on 07/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "zTutorAppDelegate.h"
#import "SearchViewController.h"
#import "LearnViewController.h"

@implementation zTutorAppDelegate

- (void)initalizeRootViewController {
    NSMutableArray *viewControllersArray = [[NSMutableArray alloc] initWithCapacity:2];
    
    UIViewController *searchTabItem = [[ZTSearchViewController alloc] init];
    UINavigationController *navCtrl = [[UINavigationController alloc] initWithRootViewController:searchTabItem];
    [navCtrl setTitle:@"Search"];
    [navCtrl.tabBarItem setImage:[[UIImage imageNamed:@"Search.png"] autorelease]];
    [viewControllersArray addObject:navCtrl];
    [navCtrl autorelease];
    [searchTabItem autorelease];
    
    UIViewController *learnTabItem = [[ZTLearnViewController alloc] init];
    [learnTabItem setTitle:@"Learn"];
    [learnTabItem.tabBarItem setImage:[[UIImage imageNamed:@"Tag.png"] autorelease]];
    [viewControllersArray addObject:learnTabItem];
    [learnTabItem autorelease];

    _rootController = [[UITabBarController alloc] init];
    [_rootController setViewControllers:viewControllersArray];

    [viewControllersArray release];
}

- (void)initalizeWindow {
    _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [_window setBackgroundColor: [UIColor whiteColor]];
    [_window addSubview:_rootController.view];
    [_window makeKeyAndVisible];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self initalizeRootViewController];

    [self initalizeWindow];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */

}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */

}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */

}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */

}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */

}

- (void)dealloc
{
    [_window release];
    
    [_rootController release];

    [super dealloc];
}

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
}
*/

@end