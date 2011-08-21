//
//  SearchViewController.h
//  zTutor
//
//  Created by Mochalov Ivan on 08/06/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TranslateViewController.h"


@interface ZTSearchViewController 
        : UIViewController <UISearchBarDelegate, UITableViewDataSource, UITableViewDelegate> {
    @private
            UITableView *_table;
            NSArray *_idx;
            ZTTranslateViewController *_translateView;
}

@end
