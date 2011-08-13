//
//  TrnaslateViewController.m
//  zTutor
//
//  Created by Mochalov Ivan on 08/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TranslateViewController.h"

@implementation ZTTranslateViewController 

- (void)loadView {
    [super loadView];
    
    UIView *view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    UITextView * textView = [[UITextView alloc] initWithFrame: [view frame]];
    [view addSubview:textView];
    [self setView: view];

    NSLog(@"try enum directories");
    NSBundle *bundle = [[NSBundle mainBundle] bundlePath];
    NSLog(bundle);
    NSArray *enumerator = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:bundle error:nil];
    for(NSString *path in enumerator)
    {
        //[textView setText:[[textView text] stringByAppendingString:[path path]]];
        //NSNumber *isDirectory = nil;
        //[path getResourceValue:&isDirectory forKey:NSURLIsDirectoryKey error:NULL];
     
        //if ([isDirectory boolValue]) {
        //NSString *localizedName = nil;
        //[path getResourceValue:&localizedName forKey:NSURLLocalizedNameKey error:NULL];
        //[textView setText:[[textView text] stringByAppendingString:localizedName]];
        //NSLog(localizedName);
        NSLog(path);
        //}
    };
    
    //NSData *fileData = [NSData dataWithContentsOfFile:@"LingvoUniversalER.idx"];
    //int bytes[10000];
    //[fileData getBytes:bytes length:10000];

    NSString *idxPath = [[NSBundle mainBundle] pathForResource:@"LingvoUniversalER.idx" ofType:nil];
    NSLog(idxPath);

    /*NSFileHandle * fileHandle = [NSFileHandle fileHandleForReadingAtPath:idxPath];
    NSData * buffer = nil;
    while ((buffer = [fileHandle readDataOfLength:10])) {
        NSString* myString = [[NSString alloc] initWithBytes:[buffer bytes] 
                length:[buffer length] encoding:NSUTF8StringEncoding];
        NSLog(myString);
      
    }*/

    NSLog(@"%@", DOCUMENTS);

    [textView release];
    [view release];
}

@end
