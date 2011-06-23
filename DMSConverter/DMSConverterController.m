//
//  DMSConverterController.m
//  DMSConverter
//
//  Created by Kornelije Sajler on 6/22/11.
//  Copyright 2011 Metaintellect. All rights reserved.
//

#import "DMSConverterController.h"

@implementation DMSConverterController

@synthesize dmsLatitudeDegrees;
@synthesize dmsLatitudeMinutes;
@synthesize dmsLatitudeSeconds;
@synthesize dmsLongitudeDegrees;
@synthesize dmsLongitudeMinutes;
@synthesize dmsLongitudeSeconds;

- (id)init
{
    self = [super init];
    if (self) {
        
    }
    
    return self;
}

- (IBAction)convertDMSToDegree: (id)sender
{
    [dmsLatitudeDegrees setDelegate: self];
    degreeLatitude.stringValue = [self convertLatitude];


    degreeLongitude.stringValue = [self convertLongitude];
    
}

- (NSString *) convertLatitude
{
    [self initConverter];    

    double latitudeResult = [converter convertDMSToDegree: dmsLatitudeDegrees.integerValue 
                                              withMinutes: dmsLatitudeMinutes.integerValue 
                                              withSeconds: dmsLatitudeSeconds.integerValue];

    if ([latitudeRadioGroup selectedTag] == LatitudeNegative) latitudeResult = latitudeResult * -1;
    
    return [NSString stringWithFormat: @"%f", latitudeResult];
}

- (NSString *) convertLongitude
{
    [self initConverter];    
    
    double longitudeResult = [converter convertDMSToDegree: dmsLongitudeDegrees.integerValue 
                                               withMinutes: dmsLongitudeMinutes.integerValue 
                                               withSeconds: dmsLongitudeSeconds.integerValue];    
    
    if ([longitudeRadioGroup selectedTag] == LongitudeNegative) longitudeResult = longitudeResult * -1;
    
    return [NSString stringWithFormat: @"%f", longitudeResult];
}

- (void) initConverter
{
    converter = nil;
    converter = [[ConverterModel alloc] init];
}

#pragma mark -
#pragma mark NSTextFieldDelegate methods

- (void)controlTextDidEndEditing: (NSNotification *)notification
{
    NSTextField *textField = [notification object];
    
    NSLog(@"Value of TextField: %d", [textField.stringValue length]);
    
    if ([textField isKindOfClass:[CustomTextField class]] && [textField.stringValue length] > 0) {
        [(CustomTextField *)textField validate];
    }
    
//    NSTextView *fieldEditor = [[aNotification userInfo] objectForKey:@"NSFieldEditor"];
//    if ([[textField window] firstResponder] == fieldEditor)
//        NSLog(@"focus lost");
//    else
//        NSLog(@"focus retained");
}
@end
