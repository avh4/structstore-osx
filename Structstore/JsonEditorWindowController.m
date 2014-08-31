//
//  JsonEditorWindowController.m
//  Structstore
//
//  Created by Aaron V. on 8/31/14.
//  Copyright (c) 2014 Aaron VonderHaar. All rights reserved.
//

#import "JsonEditorWindowController.h"

@interface JsonEditorWindowController ()

@end

@implementation JsonEditorWindowController

- (id)init {
  return [self initWithWindowNibName:@"JsonEditorWindowController"];
}

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];

    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (IBAction)didTapSave:(id)sender {
  NSDictionary *item = [NSDictionary dictionaryWithObject:@"New entry" forKey:@"name"];
  [self.delegate jsonEditorWindowController:self didSaveItem:item];
}

- (void)dismiss {
  [self.window orderOut:nil];
}

@end
