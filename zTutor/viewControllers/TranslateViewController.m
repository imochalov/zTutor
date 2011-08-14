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

-(id)initWithArticle:(ZTArticle *)art {
    self = [super init];
    if (self) {
        _art = art;
        [_art retain];
    }
    return self;
}

- (void)loadView {
    [super loadView];
    
    [self setTitle: [_art getName]];
    
    UIView *view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    _contentView = [[UITextView alloc] initWithFrame: [view frame]];
    [view addSubview:_contentView];
    [self setView: view];
    
    [view release];
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSString * content = [DICTIONARYSERVICE getContent:_art];
    [_contentView setText:content];
}

-(void)dealloc {
    if (_contentView != nil) 
        [_contentView release];
    [_art release];
    
    [super dealloc];
}

@end
