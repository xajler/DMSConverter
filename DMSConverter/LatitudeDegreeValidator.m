//
//  LatitudeDegreeValidator.m
//  DMSConverter
//
//  Created by Kornelije Sajler on 6/23/11.
//  Copyright 2011 Metaintellect. All rights reserved.
//

#import "LatitudeDegreeValidator.h"
#import "ConverterConstants.h"

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
    
    if (degree >= 0 && degree <= 90) return YES;
    
    if (*outError == NULL)
    {
        NSDictionary *errorInfo = [NSDictionary dictionaryWithObject: IncorrectLatitudeDegreeMessage 
                                                              forKey: NSLocalizedDescriptionKey];
        
        *outError = [NSError errorWithDomain: LatitudeDegreeValidatorTitle
                                        code: LatitudeDegreeValidatorCode 
                                    userInfo: errorInfo];   
    }

    return NO;
}

@end
