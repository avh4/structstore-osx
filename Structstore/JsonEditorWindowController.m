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

  // Workaround for a bug in Mavericks IB http://stackoverflow.com/a/19836172/308930
  self.textField.automaticQuoteSubstitutionEnabled = NO;

  [self.textField setString:@"{\n\t\"name\": \"New Entry\"\n}"];
  [self.textField setSelectedRange:NSMakeRange(12, 9)];
}

- (IBAction)didTapSave:(id)sender {
  NSString *stringJson = self.textField.textStorage.string;
  NSData *dataJson = [stringJson dataUsingEncoding:NSUTF8StringEncoding];
  NSError *error = nil;
  NSDictionary *item = [NSJSONSerialization JSONObjectWithData:dataJson options:0 error:&error];
  // TODO: check error
  [self.delegate jsonEditorWindowController:self didSaveItem:item];
}

- (void)dismiss {
  [self.window orderOut:nil];
}

@end
