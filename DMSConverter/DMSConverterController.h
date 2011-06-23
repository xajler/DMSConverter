//
//  DMSConverterController.h
//  DMSConverter
//
//  Created by Kornelije Sajler on 6/22/11.
//  Copyright 2011 Metaintellect. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConverterConstants.h"
#import "ConverterModel.h"

@interface DMSConverterController : NSObject <NSTextFieldDelegate>
{
    IBOutlet NSTextField *dmsLatitudeDegrees;
    IBOutlet NSTextField *dmsLatitudeMinutes;
    IBOutlet NSTextField *dmsLatitudeSeconds;
    IBOutlet NSTextField *dmsLongitudeDegrees;
    IBOutlet NSTextField *dmsLongitudeMinutes;
    IBOutlet NSTextField *dmsLongitudeSeconds; 
    IBOutlet NSTextField *degreeLatitude;
    IBOutlet NSTextField *degreeLongitude;
    
    IBOutlet NSMatrix *latitudeRadioGroup;
    IBOutlet NSMatrix *longitudeRadioGroup;
    
    ConverterModel *converter;
}

@property (retain, readwrite) IBOutlet NSTextField *dmsLatitudeDegrees;
@property (retain, readwrite) IBOutlet NSTextField *dmsLatitudeMinutes;
@property (retain, readwrite) IBOutlet NSTextField *dmsLatitudeSeconds;
@property (retain, readwrite) IBOutlet NSTextField *dmsLongitudeDegrees;
@property (retain, readwrite) IBOutlet NSTextField *dmsLongitudeMinutes;
@property (retain, readwrite) IBOutlet NSTextField *dmsLongitudeSeconds; 

- (IBAction)convertDMSToDegree: (id)sender;
- (NSString *) convertLatitude;
- (NSString *) convertLongitude;
- (void) initConverter;

@end
