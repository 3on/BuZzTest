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
    //[statusItem setEnabled:YES];
    [statusItem setTitle:@"BuZz"];
    //[statusItem setHighlightMode:YES];
    //[statusItem setMenu: statusMenu];
    [statusItem setTarget:self];
    [statusItem setAction:@selector(test:)];
    
    // Handle URL scheme
    [[NSAppleEventManager sharedAppleEventManager] setEventHandler:self andSelector:@selector(handleURLEvent:withReplyEvent:) forEventClass:kInternetEventClass andEventID:kAEGetURL];
}


- (IBAction)test:(id)sender {
    if (statusPopover.shown) {
        [statusPopover close];
    }
    else {
        [statusPopover showRelativeToRect:[sender bounds] ofView:sender preferredEdge:NSMaxYEdge];
    }
}

- (IBAction)gotoBuzz:(id)sender {
    NSURL *url = [NSURL URLWithString:@"https://buzz.3on.fr"]; // not cool
    NSWorkspace *workspace = [[NSWorkspace alloc] init]; // sounds quite uncool to init everytime.
    [workspace openURL: url];
}

// http://stackoverflow.com/questions/7214273/nstextfield-on-nspopover


- (BOOL)application:(NSApplication *)sender openFile:(NSString *)filename {
    NSLog(filename);
    return YES;
}

- (void)handleURLEvent:(NSAppleEventDescriptor*)event withReplyEvent:(NSAppleEventDescriptor*)replyEvent
{
    NSString* url = [[event paramDescriptorForKeyword:keyDirectObject] stringValue];
    NSLog(@"%@", url);
}


@end
