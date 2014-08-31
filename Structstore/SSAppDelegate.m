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

  NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
  NSString *docsDirectory = [paths objectAtIndex:0];
  NSString *jsonPath = [docsDirectory stringByAppendingPathComponent:@"test-structstore.json"];

  self.listWindowController = [[ListWindowController alloc] initWithJsonPath:jsonPath];
  [self.listWindowController showWindow:self];
}

@end
