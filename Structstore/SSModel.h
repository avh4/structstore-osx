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

- (void)addItem:(NSDictionary *)item;

@end
