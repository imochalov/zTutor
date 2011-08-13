//
//  SearchViewController.m
//  zTutor
//
//  Created by Mochalov Ivan on 08/06/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SearchViewController.h"
#import "TranslateViewController.h"

@implementation ZTSearchViewController

UITableView *_table;
NSArray *_idx;

- (void)loadView {
    [super loadView];
    
    _idx = [[NSArray alloc] init];
    
    UIView *view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, view.frame.size.width, 36)];
    [searchBar setAutocorrectionType: UITextAutocorrectionTypeNo];
    [view addSubview:searchBar];
    [searchBar setDelegate: self];
    [searchBar release];
    
    _table = [[UITableView alloc] 
            initWithFrame:CGRectMake(0, 36, view.frame.size.width, view.frame.size.height - 36) 
            style:UITableViewStylePlain];
    [_table setDataSource: self];
    [_table setDelegate: self];
    [view addSubview:_table];
    
    [self setView: view];
    [view release];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_idx count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    NSUInteger index = [indexPath row];
    if (index <= [_idx count]) {
        id item = [_idx objectAtIndex: index];
        [[cell textLabel] setText: (NSString *)item];
    }
    return [cell autorelease];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *translateView = [[ZTTranslateViewController alloc] init];
    //[translateView setTitle: (NSString *) [indexPath row]];
    [[self navigationController] pushViewController:translateView animated:YES];
    [translateView release];
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    [_idx release];
    NSString *searchText = [searchBar text];
    if (searchText != nil && [searchText length] > 0) {
        _idx = [SEARCHSERVICE startWith: searchText];
        [_idx retain];
    }
    else _idx = [[NSArray alloc] init];
    
    [_table reloadData];
}

/*- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    
}*/

- (void)dealloc {
    [_table release];
    [_idx release];
    
    [super dealloc];
}


@end
