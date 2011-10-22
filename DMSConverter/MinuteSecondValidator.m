//
//  MinuteSecondValidator.m
//  DMSConverter
//
//  Created by Kornelije Sajler on 6/23/11.
//  Copyright 2011 Metaintellect. All rights reserved.
//

#import "MinuteSecondValidator.h"
#import "ConverterConstants.h"

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
    
    if (degree >= 0 && degree <= 60) return YES;
    
    if (*outError == NULL)
    {
        NSDictionary *errorInfo = [NSDictionary dictionaryWithObject: IncorrectLMinuteSecondMessage
                                                              forKey: NSLocalizedDescriptionKey];
        
        *outError = [NSError errorWithDomain: MinuteSecondValidatorTitle 
                                        code: MinuteSecondValidatorCode
                                    userInfo: errorInfo];
    }
    
    return NO;
}

@end
