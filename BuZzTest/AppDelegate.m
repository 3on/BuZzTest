//
//  AppDelegate.m
//  BuZzTest
//
//  Created by Jr on 4/8/13.
//  Copyright (c) 2013 Ailleurs. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)awakeFromNib {
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [statusItem setEnabled:YES];
    [statusItem setTitle:@"BuZz"];
    [statusItem setHighlightMode:YES];
    [statusItem setMenu: statusMenu];
}

- (BOOL)application:(NSApplication *)sender openFile:(NSString *)filename {
    NSLog(filename);
    return YES;
}

@end
