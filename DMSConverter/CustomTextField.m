//
//  CustomTextField.m
//  DMSConverter
//
//  Created by Kornelije Sajler on 6/23/11.
//  Copyright 2011 Metaintellect. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField

@synthesize inputValidator;

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (BOOL) validate
{
    NSError *error;
    BOOL validationResult = [inputValidator validateInputForTextField: self 
                                                            withError: &error];
    
    if (!validationResult)
    {
        [_window makeFirstResponder: self];
        NSAlert *alert =
        [NSAlert alertWithMessageText: [error localizedDescription]
                        defaultButton: @"OK" 
                      alternateButton: nil 
                          otherButton: nil
            informativeTextWithFormat: @"Huston we have a problem"];
        [alert runModal];
        
        self.stringValue = @"";
        
//        NSAlert *alert = [[NSAlert alloc] init];
//        [alert addButtonWithTitle:@"OK"];
//        [alert setMessageText: [error localizedDescription]];
//        [alert setInformativeText:@"Huston we have a problem"];
//        [alert setAlertStyle:NSWarningAlertStyle];
//        [alert beginSheetModalForWindow:_window modalDelegate:self didEndSelector:@selector(alertDidEnd:returnCode:contextInfo:) contextInfo:nil];
    }
    
    return validationResult;
}

@end
