//
//  SSAppDelegate.m
//  Structstore
//
//  Created by Aaron V. on 8/31/14.
//  Copyright (c) 2014 Aaron VonderHaar. All rights reserved.
//

#import "SSAppDelegate.h"
#import "ListWindowController.h"

@interface SSAppDelegate ()
@property (nonatomic) ListWindowController *listWindowController;
@end

@implementation SSAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
  // Insert code here to initialize your application

  self.listWindowController = [[ListWindowController alloc] init];
  [self.listWindowController showWindow:self];
}

@end
