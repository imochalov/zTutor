//
//  NewCardView.m
//  zTutor
//
//  Created by Mochalov Ivan on 17.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NewCardView.h"


@implementation ZTNewCardView

-(void)setDelegate:(id<IZTCardViewDelegate>)delegate {
    [_delegate release];
    _delegate = delegate;
    [_delegate retain];
}

-(void)show:(UIView *)view {
    CGRect frame = [view frame];
    ZTCard *card = [_delegate card];
    
    UILabel *lblWord = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, 63)];
    [lblWord setTextAlignment:UITextAlignmentCenter];
    [lblWord setText:[card word]];
    [lblWord setFont:[UIFont fontWithName:@"Arial" size:26.0]];
    [view addSubview:lblWord];
    [lblWord release];
    
    UILabel *lblTran = [[UILabel alloc]initWithFrame:CGRectMake(0, 72, frame.size.width, frame.size.height - 72)];
    [lblTran setTextAlignment:UITextAlignmentCenter];
    [lblTran setText:[[card translate] nextObject]];
    [lblTran setFont:[UIFont fontWithName:@"Arial" size:26.0]];
    [view addTarget:self
                action: @selector(touched)
      forControlEvents: UIControlEventTouchUpInside];
    [view addSubview:lblTran];
    [lblTran release];
}

-(void)touched:(id)sender {
    [_delegate complete:TRUE];
}

-(void)dealloc {
    [_delegate release];
    
    [super dealloc];
}

@end
