//
//  SSModel.h
//  Structstore
//
//  Created by Aaron V. on 8/31/14.
//  Copyright (c) 2014 Aaron VonderHaar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SSModel : NSObject <NSTableViewDataSource>

@property (strong, nonatomic) NSMutableArray *items;

@property (copy, nonatomic) NSString *jsonPath;

- (id)initWithJsonPath:(NSString *)jsonPath;
- (void)addItem:(NSDictionary *)item;

@end
