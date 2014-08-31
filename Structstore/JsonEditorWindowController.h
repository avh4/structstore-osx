//
//  JsonEditorWindowController.h
//  Structstore
//
//  Created by Aaron V. on 8/31/14.
//  Copyright (c) 2014 Aaron VonderHaar. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class JsonEditorWindowController;

@protocol JsonEditorWindowControllerDelegate <NSObject>

- (void)jsonEditorWindowController:(JsonEditorWindowController *)jsonEditorWindowController didSaveItem:(NSDictionary *)item;

@end

@interface JsonEditorWindowController : NSWindowController

@property (weak) id<JsonEditorWindowControllerDelegate> delegate;
@property (strong) IBOutlet NSTextView *textField;

- (IBAction)didTapSave:(id)sender;

- (void)dismiss;

@end
