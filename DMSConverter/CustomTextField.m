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
    NSError *error = nil;
    BOOL validationResult = [inputValidator validateInputForTextField: self 
                                                            withError: &error];
    
    return validationResult;
}

@end
