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
  [self doesNotRecognizeSelector:_cmd];
  return nil;
}

- (id)initWithJsonPath:(NSString *)jsonPath {
  if (self = [super init]) {
    self.jsonPath = jsonPath;
    [self read];
  }
  return self;
}

- (void)read {
  BOOL exists = [[NSFileManager defaultManager] fileExistsAtPath:self.jsonPath];
  if (exists) {
    NSData *data = [NSData dataWithContentsOfFile:self.jsonPath];
    NSError *error = nil;
    id json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    if (error) {
      // TODO: handle errors
      @throw error;
    }
    if (![json isKindOfClass:[NSArray class]]) {
      // TODO: handle error
      @throw @"json file did not contain an array";
    }
    self.items = [NSMutableArray arrayWithArray:json];
  } else {
    self.items = [NSMutableArray array];
  }
}

- (void)write {
  NSOutputStream *out = [NSOutputStream outputStreamToFileAtPath:self.jsonPath append:NO];
  [out open];
  NSError *error = nil;
  [NSJSONSerialization writeJSONObject:self.items toStream:out options:NSJSONWritingPrettyPrinted error:&error];
  [out close];
  // TODO: check error
}

- (void)addItem:(NSDictionary *)item {
  [self.items addObject:item];
  [self write];
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
