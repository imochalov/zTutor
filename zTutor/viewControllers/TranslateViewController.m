//
//  TrnaslateViewController.m
//  zTutor
//
//  Created by Mochalov Ivan on 08/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TranslateViewController.h"

@implementation ZTTranslateViewController 

UITextView *_contentView;

@synthesize Article;

- (void)loadView {
    [super loadView];
    
    UIView *view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    _contentView = [[UITextView alloc] initWithFrame: [view frame]];
    [view addSubview:_contentView];
    [self setView: view];
    
    [view release];
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self setTitle: [Article getName]];
    
    NSString * content = [DICTIONARYSERVICE getContent:Article];
    [_contentView setText:content];
}

-(void)dealloc {
    if (_contentView != nil) 
        [_contentView release];
    [Article release];
    
    [super dealloc];
}

@end
