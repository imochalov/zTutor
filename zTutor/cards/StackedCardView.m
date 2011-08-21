//
//  StackedCardView.m
//  zTutor
//
//  Created by Mochalov Ivan on 17.08.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "StackedCardView.h"

@implementation ZTStackedCardView

-(void)setDelegate:(id<IZTCardViewDelegate>)delegate {
    [_delegate release];
    _delegate = delegate;
    [_delegate retain];
}

-(void)show:(UIView *)view {
    CGRect frame = [view frame];
    
    UILabel *lblWord = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, 63)];
    [lblWord setTextAlignment:UITextAlignmentCenter];
    ZTCard *card = [_delegate card];
    [lblWord setText:[card word]];
    [lblWord setFont:[UIFont fontWithName:@"Arial" size:26.0]];
    [view addSubview:lblWord];
    [lblWord release];
    
    [self prepareTranslates];
    UITableView *tblTranslate = [[UITableView alloc]
                                 initWithFrame:CGRectMake(0, 63, frame.size.width, frame.size.height - 63)
                                 style:UITableViewStylePlain];
    [tblTranslate setDelegate:self];
    [tblTranslate setDataSource:self];
    [view addSubview:tblTranslate];
    [tblTranslate release];
}

-(void)prepareTranslates {
    if (_translates == nil) {
        _translates = [[NSMutableArray alloc] initWithCapacity:10];
    }
    for (NSString *item in _translates) {
        [item release];
    }
    [_translates removeAllObjects];
    for (ZTCard *item in [[_delegate packet] cards]) {
        NSEnumerator *tranWords = [item translate];
        NSString *translate = [tranWords nextObject];
        [translate retain];
        [_translates addObject:translate];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_translates count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    NSString *text = [_translates objectAtIndex:[indexPath row]];
    [[cell textLabel] setText:text];
    return [cell autorelease];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [_delegate complete:TRUE];
}

-(void)dealloc {
    [_delegate release];
    for (NSString *item in _translates) {
        [item release];
    }
    [_translates release];
    
    [super dealloc];
}

@end
