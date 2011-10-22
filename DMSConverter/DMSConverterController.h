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
#import "LatitudeDegreeValidator.h"
#import "CustomTextField.h"

@interface DMSConverterController : NSObject <NSTextFieldDelegate>
{

    IBOutlet NSTextField *degreeLatitude;
    IBOutlet NSTextField *degreeLongitude;
    
    IBOutlet NSMatrix *latitudeRadioGroup;
    IBOutlet NSMatrix *longitudeRadioGroup;
    
    ConverterModel *converter;
    @private
    CustomTextField *dmsLatitudeDegrees;
    CustomTextField *dmsLatitudeMinutes;
    CustomTextField *dmsLatitudeSeconds;
    CustomTextField *dmsLongitudeDegrees;
    CustomTextField *dmsLongitudeMinutes;
    CustomTextField *dmsLongitudeSeconds;     
}

@property (retain) IBOutlet CustomTextField *dmsLatitudeDegrees;
@property (retain) IBOutlet CustomTextField *dmsLatitudeMinutes;
@property (retain) IBOutlet CustomTextField *dmsLatitudeSeconds;
@property (retain) IBOutlet CustomTextField *dmsLongitudeDegrees;
@property (retain) IBOutlet CustomTextField *dmsLongitudeMinutes;
@property (retain) IBOutlet CustomTextField *dmsLongitudeSeconds; 

- (IBAction)convertDMSToDegree: (id)sender;
- (NSString *) convertLatitude;
- (NSString *) convertLongitude;
- (void) initConverter;

@end
