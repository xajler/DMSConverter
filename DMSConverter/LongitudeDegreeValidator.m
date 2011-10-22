//
//  LongitudeDegreeValidator.m
//  DMSConverter
//
//  Created by Kornelije Sajler on 6/23/11.
//  Copyright 2011 Metaintellect. All rights reserved.
//

#import "LongitudeDegreeValidator.h"
#import "ConverterConstants.h"

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
    
    if (degree >= 0 && degree <= 180) return YES;
        
    if (*outError == NULL) 
    {
        NSDictionary *errorInfo = [NSDictionary dictionaryWithObject: IncorrectLongitudeDegreeMessage 
                                                              forKey: NSLocalizedDescriptionKey];
        
        *outError = [NSError errorWithDomain: LongitudeDegreeValidatorTitle
                                        code: LongitudeDegreeValidatorCode
                                    userInfo: errorInfo];
    }
        
    return NO;
}

@end
