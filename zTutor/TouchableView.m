//
//  TouchableView.m
//  zTutor
//
//  Created by Mochalov Ivan on 23.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TouchableView.h"


@implementation ZTTouchableView

-(void)setDelegate:(id<ZTTouchableViewDelegate>)delegate {
    [delegate retain];
    [_delegate release];
    _delegate = delegate;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [_delegate touchesBegan:touches withEvent:event];
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    [_delegate touchesMoved:touches withEvent:event];
    [super touchesMoved:touches withEvent:event];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [_delegate touchesEnded:touches withEvent:event];
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    [_delegate touchesCancelled:touches withEvent:event];
    [super touchesCancelled:touches withEvent:event];
}

- (void)dealloc
{
    [_delegate release];
    
    [super dealloc];
}

@end
