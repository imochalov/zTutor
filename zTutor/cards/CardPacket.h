//
//  CardPacket.h
//  zTutor
//
//  Created by Mochalov Ivan on 08/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

@interface ZTCardPacket : NSObject {
    @private
        NSEnumerator *_items;
}

-(id)initWithCards:(NSEnumerator *)items;

@property(nonatomic,readonly) NSEnumerator *cards;

@end