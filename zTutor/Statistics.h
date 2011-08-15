//
//  Statistics.h
//  zTutor
//
//  Created by Mochalov Ivan on 15.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ZTStatistics : NSObject {
    @private
    int _known;
    int _remain;
}

-(id)initWithValues:(int)known: (int)remain;
-(int)getKnown;
-(int)getRemain;

@end
