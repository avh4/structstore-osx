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
  return [self initWithWindowNibName:@"ListWindowController"];
}

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
      self.model = [[SSModel alloc] init];
    }
    return self;
}

- (void)windowDidLoad
{
  [super windowDidLoad];

  self.tableView.dataSource = self.model;
}

- (IBAction)didTapAdd:(id)sender {
  [self.model add];
  [self.tableView reloadData];
}

@end
