//
//  TrnaslateViewController.m
//  zTutor
//
//  Created by Mochalov Ivan on 08/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TranslateViewController.h"

@implementation ZTTranslateViewController 

- (void)loadView {
    [super loadView];
    
    UIView *view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    UITextView * textView = [[UITextView alloc] initWithFrame: [view frame]];
    [view addSubview:textView];
    [self setView: view];

    //TODO: need implementation
    
    [textView release];
    [view release];
}

@end
