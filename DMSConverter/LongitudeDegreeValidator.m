//
//  LongitudeDegreeValidator.m
//  DMSConverter
//
//  Created by Kornelije Sajler on 6/23/11.
//  Copyright 2011 Metaintellect. All rights reserved.
//

#import "LongitudeDegreeValidator.h"

@implementation LongitudeDegreeValidator

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
    
    if (degree >= 0 && degree <= 180) {
        return YES;
    }
    else
    {
        NSDictionary *errorInfo = 
        [NSDictionary dictionaryWithObject: @"Incorect Longitude: Longitude degree must be between 0 and 180" 
                                    forKey:NSLocalizedDescriptionKey];
        *outError = [NSError errorWithDomain: @"LongitudeDegreeValidator" 
                                        code: 101
                                    userInfo: errorInfo];
        return NO;
    }
    
}

@end
