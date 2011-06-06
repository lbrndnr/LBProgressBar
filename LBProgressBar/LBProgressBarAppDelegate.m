//
//  LBProgressBarAppDelegate.m
//  LBProgressBar
//
//  Created by Laurin Brandner on 05.06.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LBProgressBarAppDelegate.h"

double i = 0;

@implementation LBProgressBarAppDelegate

@synthesize window;

-(void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [NSTimer scheduledTimerWithTimeInterval:1.0/30 target:self selector:@selector(count:) userInfo:nil repeats:YES];
}

-(void)count:(NSTimer*)timer {
    if (i >= 100) {
        [timer invalidate];
    }
    
    int percent = i;
    NSString* string = [NSString stringWithFormat:@"%i", percent];
    string = [string stringByAppendingString:@"%"];
    [label setStringValue:string];
    
    [indicator setDoubleValue:i];
    i++;
}

@end
