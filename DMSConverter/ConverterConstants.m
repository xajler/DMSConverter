//
//  ConverterConstants.m
//  DMSConverter
//
//  Created by Kornelije Sajler on 6/23/11.
//  Copyright 2011 Metaintellect. All rights reserved.
//

#import "ConverterConstants.h"

const NSInteger LatitudeNegative = 1;
const NSInteger LongitudeNegative = 0;
//NSString * const DMSLatitudeDegreeIdentifier = @"DMSLatitudeDegree";
//NSString * const DMSLatitudeMinuteIdentifier = @"DMSLatitudeMinute";
//NSString * const DMSLatitudeSecondIdentifier = @"DMSLatitudeSecond";
//NSString * const DMSLongitudeDegreeIdentifier = @"DMSLongitudeDegree";
//NSString * const DMSLongitudeMinuteIdentifier = @"DMSLongitudeMinute";
//NSString * const DMSLongitudeSecondIdentifier = @"DMSLongitudeSecond";

NSString * const IncorrectLatitudeDegreeMessage = @"Incorrect Latitude: Latitude degree must be between 0 and 90";
NSString * const LatitudeDegreeValidatorTitle = @"LatitudeDegreeValidator";
const NSInteger LatitudeDegreeValidatorCode = 100;

NSString * const IncorrectLongitudeDegreeMessage = @"Incorrect Longitude: Longitude degree must be between 0 and 180";
NSString * const LongitudeDegreeValidatorTitle = @"LongitudeDegreeValidator";
const NSInteger LongitudeDegreeValidatorCode = 101;

NSString * const IncorrectLMinuteSecondMessage = @"Incorect Minutes or Seconds: Minutes or Seconds must be between 0 and 60";
NSString * const MinuteSecondValidatorTitle = @"MinuteSecondValidator";
const NSInteger MinuteSecondValidatorCode = 102;

@implementation ConverterConstants
@end