//
//  MinuteSecondValidator.m
//  DMSConverter
//
//  Created by Kornelije Sajler on 6/23/11.
//  Copyright 2011 Metaintellect. All rights reserved.
//

#import "MinuteSecondValidator.h"

@implementation MinuteSecondValidator

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (BOOL) validateInputForTextField: (NSTextField *) textField
                         withError: (NSError **) outError
{
    NSInteger degree = textField.integerValue;
    
    if (degree >= 0 && degree <= 60) {
        return YES;
    }
    else
    {
        NSDictionary *errorInfo = 
        [NSDictionary dictionaryWithObject: @"Incorect Minutes or Seconds: Minutes or Seconds must be between 0 and 60" 
                                    forKey:NSLocalizedDescriptionKey];
        *outError = [NSError errorWithDomain: @"MinuteSecondValidator" 
                                        code: 102
                                    userInfo: errorInfo];
        return NO;
    }    
}

@end
