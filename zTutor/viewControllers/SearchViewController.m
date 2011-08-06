//
//  SearchViewController.m
//  zTutor
//
//  Created by Mochalov Ivan on 08/06/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SearchViewController.h"

@implementation ZTSearchViewController
- (void)loadView {
    [super loadView];
    
    UIView *view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, view.frame.size.width, 36)];
    [view addSubview:searchBar];
    [searchBar release];
    
    UITableView *table = [[UITableView alloc] 
            initWithFrame:CGRectMake(0, 36, view.frame.size.width, view.frame.size.height - 36) 
            style:UITableViewStylePlain];
    [view addSubview:table];
    [table release];
    
    [self setView: view];
    [view release];
}


@end
