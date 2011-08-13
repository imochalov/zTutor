//
//  DictionaryService.h
//  zTutor
//
//  Created by Mochalov Ivan on 08/02/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IService.h"
#import "Article.h"


@interface ZTDictionaryService : NSObject<IZTService> {

}

-(NSString *)getContent:(ZTArticle *)article;

@end