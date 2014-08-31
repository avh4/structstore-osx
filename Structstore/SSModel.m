//
//  SSModel.m
//  Structstore
//
//  Created by Aaron V. on 8/31/14.
//  Copyright (c) 2014 Aaron VonderHaar. All rights reserved.
//

#import "SSModel.h"

@implementation SSModel

- (id)init {
  if (self = [super init]) {
    self.items = [NSMutableArray array];
  }
  return self;
}

- (void)add {
  NSDictionary *item = [NSDictionary dictionaryWithObject:@"New entry" forKey:@"name"];
  [self.items addObject:item];
}

#pragma mark - <NSTableViewDataSource>

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
  return self.items.count;
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
  NSDictionary *item = [self.items objectAtIndex:row];
  return [item objectForKey:@"name"];
}

@end
