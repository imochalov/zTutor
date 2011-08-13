//
//  TranslateViewController.h
//  zTutor
//
//  Created by Mochalov Ivan on 08/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Article.h"

@interface ZTTranslateViewController : UIViewController {
@private
    ZTArticle *_art;
}

-(id)initWithArticle: (ZTArticle *)art;

@end
