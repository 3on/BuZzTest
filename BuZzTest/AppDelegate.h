//
//  AppDelegate.h
//  BuZzTest
//
//  Created by Jr on 4/8/13.
//  Copyright (c) 2013 Ailleurs. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    NSStatusItem *statusItem;
    IBOutlet NSMenu *statusMenu;
    
    IBOutlet NSPopover *statusPopover;
    IBOutlet NSViewController *popoverController;
}

- (BOOL) application:(NSApplication *)sender openFile:(NSString *)filename;
- (IBAction)test:(id)sender;

@end
