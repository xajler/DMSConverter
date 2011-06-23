//
//  Converter.h
//  DMSConverter
//
//  Created by Kornelije Sajler on 6/22/11.
//  Copyright 2011 Metaintellect. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConverterConstants.h"

@interface ConverterModel : NSObject
{
}

- (double) convertDMSToDegree: (NSInteger)degrees 
                  withMinutes: (NSInteger)minutes  
                  withSeconds: (NSInteger)seconds;

- (BOOL) validateLatitudeDegrees: (NSInteger)degrees;
@end
