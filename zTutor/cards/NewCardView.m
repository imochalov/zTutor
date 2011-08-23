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

-(void)show:(ZTTouchableView *)view {
    CGRect frame = [view frame];
    ZTCard *card = [_delegate card];
    
    [view setDelegate:self];
    
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
    [view addSubview:lblTran];
    [lblTran release];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    _moved = FALSE;
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    _moved = TRUE;
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    if (_moved) {
        [_delegate complete:TRUE];
    }
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    
}

-(void)touched:(id)sender {
    [_delegate complete:TRUE];
}

-(void)dealloc {
    [_delegate release];
    
    [super dealloc];
}

@end
