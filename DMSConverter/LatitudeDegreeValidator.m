//
//  LatitudeDegreeValidator.m
//  DMSConverter
//
//  Created by Kornelije Sajler on 6/23/11.
//  Copyright 2011 Metaintellect. All rights reserved.
//

#import "LatitudeDegreeValidator.h"

@implementation LatitudeDegreeValidator

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
    
    if (degree >= 0 && degree <= 90) {
        return YES;
    }
    else
    {
        NSDictionary *errorInfo = 
                [NSDictionary dictionaryWithObject: @"Incorect Latitude: Latitude degree must be between 0 and 90" 
                                            forKey:NSLocalizedDescriptionKey];
        *outError = [NSError errorWithDomain: @"LatitudeValidator" 
                                        code: 100 
                                    userInfo: errorInfo];
        return NO;
    }
}

@end
