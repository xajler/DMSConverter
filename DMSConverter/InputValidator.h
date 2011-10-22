//
//  InputValidator.h
//  DMSConverter
//
//  Created by Kornelije Sajler on 6/23/11.
//  Copyright 2011 Metaintellect. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputValidator : NSObject

- (BOOL) validateInputForTextField: (NSTextField *) textField
                         withError: (NSError **) outError;

@end
