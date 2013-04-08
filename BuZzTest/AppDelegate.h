//
//  AppDelegate.h
//  BuZzTest
//
//  Created by Jr on 4/8/13.
//  Copyright (c) 2013 Ailleurs. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet NSMenu *statusMenu;
    NSStatusItem *statusItem;
}

@property (assign) IBOutlet NSWindow *window;

- (BOOL) application:(NSApplication *)sender openFile:(NSString *)filename;

@end
