//
//  LBProgressBarAppDelegate.h
//  LBProgressBar
//
//  Created by Laurin Brandner on 05.06.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "LBProgressBar.h"

@interface LBProgressBarAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
    IBOutlet LBProgressBar* indicator;
    IBOutlet NSTextField* label;
}

@property (assign) IBOutlet NSWindow *window;

@end
