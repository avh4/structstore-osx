//
//  ListWindowController.h
//  Structstore
//
//  Created by Aaron V. on 8/31/14.
//  Copyright (c) 2014 Aaron VonderHaar. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "SSModel.h"

@interface ListWindowController : NSWindowController

@property (strong, nonatomic) SSModel *model;
@property (weak) IBOutlet NSTableView *tableView;

- (IBAction)didTapAdd:(id)sender;

@end
