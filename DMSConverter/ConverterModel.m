//
//  Converter.m
//  DMSConverter
//
//  Created by Kornelije Sajler on 6/22/11.
//  Copyright 2011 Metaintellect. All rights reserved.
//

#import "ConverterModel.h"

@implementation ConverterModel

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (double) convertDMSToDegree: (NSInteger)degrees 
                  withMinutes: (NSInteger)minutes  
                  withSeconds: (NSInteger)seconds
{
    NSInteger secondsTotal = (minutes * 60) + seconds;
    return degrees + (secondsTotal / 3600.0L);    
}


@end
