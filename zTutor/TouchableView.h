//
//  TouchableView.h
//  zTutor
//
//  Created by Mochalov Ivan on 23.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ZTTouchableViewDelegate <NSObject>

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event;

@end

@interface ZTTouchableView : UIView {
    @protected
    id<ZTTouchableViewDelegate> _delegate;
}

@property(nonatomic,assign)id<ZTTouchableViewDelegate> delegate;

@end
