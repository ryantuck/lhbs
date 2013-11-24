//	####################################################################

//	LIT Headband Simulator

//	.h

//	####################################################################

#define __simulator__

#import <Cocoa/Cocoa.h>
#import "Headband.h"
#import "LIT.h"
#import "Tester.h"

@interface LITAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow	*window;


//	these are the 32 colored rectangles
@property (assign) IBOutlet NSColorWell *well0;
@property (assign) IBOutlet NSColorWell *well1;
@property (assign) IBOutlet NSColorWell *well2;
@property (assign) IBOutlet NSColorWell *well3;
@property (assign) IBOutlet NSColorWell *well4;
@property (assign) IBOutlet NSColorWell *well5;
@property (assign) IBOutlet NSColorWell *well6;
@property (assign) IBOutlet NSColorWell *well7;
@property (assign) IBOutlet NSColorWell *well8;
@property (assign) IBOutlet NSColorWell *well9;
@property (assign) IBOutlet NSColorWell *well10;
@property (assign) IBOutlet NSColorWell *well11;
@property (assign) IBOutlet NSColorWell *well12;
@property (assign) IBOutlet NSColorWell *well13;
@property (assign) IBOutlet NSColorWell *well14;
@property (assign) IBOutlet NSColorWell *well15;
@property (assign) IBOutlet NSColorWell *well16;
@property (assign) IBOutlet NSColorWell *well17;
@property (assign) IBOutlet NSColorWell *well18;
@property (assign) IBOutlet NSColorWell *well19;
@property (assign) IBOutlet NSColorWell *well20;
@property (assign) IBOutlet NSColorWell *well21;
@property (assign) IBOutlet NSColorWell *well22;
@property (assign) IBOutlet NSColorWell *well23;
@property (assign) IBOutlet NSColorWell *well24;
@property (assign) IBOutlet NSColorWell *well25;
@property (assign) IBOutlet NSColorWell *well26;
@property (assign) IBOutlet NSColorWell *well27;
@property (assign) IBOutlet NSColorWell *well28;
@property (assign) IBOutlet NSColorWell *well29;
@property (assign) IBOutlet NSColorWell *well30;
@property (assign) IBOutlet NSColorWell *well31;

@property (assign) IBOutlet NSColorWell *onOffWell;

//	an array of the rectangles
@property (assign)			NSArray		*wellArray;

- (IBAction)slider0Moved:(id)sender;
- (IBAction)slider1Moved:(id)sender;
- (IBAction)slider2Moved:(id)sender;
- (IBAction)slider3Moved:(id)sender;
- (IBAction)slider4Moved:(id)sender;
- (IBAction)slider5Moved:(id)sender;
- (IBAction)slider6Moved:(id)sender;

@property (assign) IBOutlet NSSlider *slider0;
@property (assign) IBOutlet NSSlider *slider1;
@property (assign) IBOutlet NSSlider *slider2;
@property (assign) IBOutlet NSSlider *slider3;
@property (assign) IBOutlet NSSlider *slider4;
@property (assign) IBOutlet NSSlider *slider5;
@property (assign) IBOutlet NSSlider *slider6;

@property (assign) IBOutlet NSTextField *slider0Label;
@property (assign) IBOutlet NSTextField *slider1Label;
@property (assign) IBOutlet NSTextField *slider2Label;
@property (assign) IBOutlet NSTextField *slider3Label;
@property (assign) IBOutlet NSTextField *slider4Label;
@property (assign) IBOutlet NSTextField *slider5Label;
@property (assign) IBOutlet NSTextField *slider6Label;

- (IBAction)resetSlidersButtonPressed:(id)sender;

- (IBAction)stepButtonPressed:(id)sender;


//	other necessary members
@property (nonatomic)			Headband	myHeadband;
@property (nonatomic)			bool		io;	// indicates if hb is on/off
@property (nonatomic,retain)	NSTimer*	timer;

// button methods
- (IBAction)switchIO:	(id)sender;
- (IBAction)upPressed:	(id)sender;
- (IBAction)downPressed:(id)sender;
- (IBAction)testerButtonPressed:(id)sender;
- (IBAction)eventButtonPressed:(id)sender;

// updating methods
- (void)updateFunction;
- (void)updateColors;

@end
