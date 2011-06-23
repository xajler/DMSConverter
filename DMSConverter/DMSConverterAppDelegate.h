//
//  DMSConverterAppDelegate.h
//  DMSConverter
//
//  Created by Kornelije Sajler on 6/22/11.
//  Copyright 2011 Metaintellect. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class DMSConverterController;

@interface DMSConverterAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *_window;
    DMSConverterController *viewController;
}

@property (strong) IBOutlet NSWindow *window;
@property (retain) IBOutlet DMSConverterController *viewController;

@end
