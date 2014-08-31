//
//  ListWindowController.m
//  Structstore
//
//  Created by Aaron V. on 8/31/14.
//  Copyright (c) 2014 Aaron VonderHaar. All rights reserved.
//

#import "ListWindowController.h"

@interface ListWindowController ()

@end

@implementation ListWindowController

- (id)init {
  [self doesNotRecognizeSelector:_cmd];
  return nil;
}

- (id)initWithJsonPath:(NSString *)jsonPath {
  if (self = [self initWithWindowNibName:@"ListWindowController"]) {
    self.model = [[SSModel alloc] initWithJsonPath:jsonPath];
  }
  return self;
}

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
      self.jsonWindowControllers = [NSMutableArray array];
    }
    return self;
}

- (void)windowDidLoad
{
  [super windowDidLoad];

  self.tableView.dataSource = self.model;
}

- (IBAction)didTapAdd:(id)sender {
  JsonEditorWindowController *wc = [[JsonEditorWindowController alloc] init];
  wc.delegate = self;
  [self.jsonWindowControllers addObject:wc];
  [wc showWindow:self];
}

#pragma mark - <JsonEditorWindowControllerDelegate>

- (void)jsonEditorWindowController:(JsonEditorWindowController *)jsonEditorWindowController didSaveItem:(NSDictionary *)item {
  [self.model addItem:item];
  [self.jsonWindowControllers removeObject:jsonEditorWindowController];
  [jsonEditorWindowController dismiss];
  [self.tableView reloadData];
}

@end
