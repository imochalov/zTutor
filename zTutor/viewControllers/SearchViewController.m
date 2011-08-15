//
//  SearchViewController.m
//  zTutor
//
//  Created by Mochalov Ivan on 08/06/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SearchViewController.h"
#import "TranslateViewController.h"
#import "Article.h"

@implementation ZTSearchViewController

UITableView *_table;
NSArray *_idx;
ZTTranslateViewController *_translateView;

- (void)loadView {
    [super loadView];
    
    //[self setTitle:@"Lingvo Universal EN-RU"];
    
    _idx = [[NSArray alloc] init];
    
    UIView *view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, view.frame.size.width, 45)];
    [searchBar setAutocorrectionType: UITextAutocorrectionTypeNo];
    [view addSubview:searchBar];
    [searchBar setDelegate: self];
    [searchBar release];
    
    _table = [[UITableView alloc] 
            initWithFrame:CGRectMake(0, 45, view.frame.size.width, view.frame.size.height - 45) 
            style:UITableViewStylePlain];
    [_table setDataSource: self];
    [_table setDelegate: self];
    [view addSubview:_table];
    
    [self setView: view];
    [view release];
}

-(void)viewDidAppear:(BOOL)animated {
    [self setTitle:@"Lingvo Universal EN-RU"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_idx count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    NSUInteger index = [indexPath row];
    if (index <= [_idx count]) {
        ZTArticle *item = [_idx objectAtIndex: index];
        [[cell textLabel] setText: [item getName]];
    }
    return [cell autorelease];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSUInteger index = [indexPath row];
    if (index >= [_idx count]) return;
    
    ZTArticle *art = [_idx objectAtIndex:index];
    if (_translateView == nil) {
        _translateView = [[ZTTranslateViewController alloc] init];
    }
    [_translateView setArticle:art];
    [self setTitle:@"Search"];
    [[self navigationController] pushViewController:_translateView animated:YES];
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
    [searchBar resignFirstResponder];
}

/*- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    
}*/

- (void)dealloc {
    [_table release];
    [_idx release];
    if (_translateView != nil)
        [_translateView release];
    
    [super dealloc];
}


@end
