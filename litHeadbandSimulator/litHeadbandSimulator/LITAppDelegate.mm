//	####################################################################

//	LIT Headband Simulator

//	.m

//	####################################################################

#import "LITAppDelegate.h"

@implementation LITAppDelegate

@synthesize io;
@synthesize timer;

@synthesize well0;
@synthesize well1;
@synthesize well2;
@synthesize well3;
@synthesize well4;
@synthesize well5;
@synthesize well6;
@synthesize well7;
@synthesize well8;
@synthesize well9;
@synthesize well10;
@synthesize well11;
@synthesize well12;
@synthesize well13;
@synthesize well14;
@synthesize well15;
@synthesize well16;
@synthesize well17;
@synthesize well18;
@synthesize well19;
@synthesize well20;
@synthesize well21;
@synthesize well22;
@synthesize well23;
@synthesize well24;
@synthesize well25;
@synthesize well26;
@synthesize well27;
@synthesize well28;
@synthesize well29;
@synthesize well30;
@synthesize well31;

@synthesize slider0;
@synthesize slider1;
@synthesize slider2;
@synthesize slider3;
@synthesize slider4;
@synthesize slider5;
@synthesize slider6;

@synthesize slider0Label;
@synthesize slider1Label;
@synthesize slider2Label;
@synthesize slider3Label;
@synthesize slider4Label;
@synthesize slider5Label;
@synthesize slider6Label;

@synthesize wellArray;
@synthesize myHeadband;
@synthesize onOffWell;


- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// assign array values
	self.wellArray = [[NSArray alloc] initWithObjects:well0,well1,well2,well3,well4,well5,well6,well7,well8,well9,well10,well11,well12,well13,well14,well15,well16,well17,well18,well19,well20,well21,well22,well23,well24,well25,well26,well27,well28,well29,well30,well31, nil];
}

- (IBAction)switchIO:(id)sender
{
	if (!io)
	{
		NSLog(@"turned on");
		
		io = 1;
		
		[onOffWell setColor:[NSColor greenColor]];
		
		//	this creates a loop that runs during a certain time interval
		timer = [NSTimer scheduledTimerWithTimeInterval:.04
												 target:self
											   selector:@selector(updateFunction)
											   userInfo:nil
												repeats:YES];
	}
	
	else
	{
		NSLog(@"turned off");
		
		io = 0;
		
		[onOffWell setColor:[NSColor redColor]];
		
		[timer invalidate];				// stops loop
		
		for (int n=0;n<32;n++)
		{
			[[wellArray objectAtIndex:n]
			 setColor:[NSColor colorWithCalibratedRed:0
												green:0
												 blue:0
												alpha:1]];
		}
	
	}
}

- (IBAction)upPressed:(id)sender
{
	if (io)
	{
		myHeadband.upButton.pressed = 1;
	}
}

- (IBAction)downPressed:(id)sender
{
	if (io)
	{
		myHeadband.downButton.pressed = 1;
	}
}

-(void)updateFunction
{
	// updates audio
	audio.eq.spectrum[0] = [slider0 doubleValue];
	audio.eq.spectrum[1] = [slider1 doubleValue];
	audio.eq.spectrum[2] = [slider2 doubleValue];
	audio.eq.spectrum[3] = [slider3 doubleValue];
	audio.eq.spectrum[4] = [slider4 doubleValue];
	audio.eq.spectrum[5] = [slider5 doubleValue];
	audio.eq.spectrum[6] = [slider6 doubleValue];
	
	// updates shit
	myHeadband.update();
	[self updateColors];
	
	// ensures buttons don't remain 'pressed'
	myHeadband.upButton.pressed		= 0;
	myHeadband.downButton.pressed	= 0;
}

-(void)updateColors
{	
	//	assigns colors to UI
	for (int n=0;n<32;n++)
	{
		float tmpA = (float) leds[n].brightness / maxBrightness;
		float tmpR = (float) leds[n].color.r * tmpA / maxRGB;
		float tmpG = (float) leds[n].color.g * tmpA / maxRGB;
		float tmpB = (float) leds[n].color.b * tmpA / maxRGB;
		
		[[wellArray objectAtIndex:n]
		 setColor:[NSColor colorWithCalibratedRed:tmpR
											green:tmpG
											 blue:tmpB
											alpha:1]];
	}
}


- (IBAction)testerButtonPressed:(id)sender
{
	// run whatever function from Tester.h (or regz code) you want
	
	tester.functionTesting();
}


- (IBAction)eventButtonPressed:(id)sender
{
	NSLog(@"event button pressed");
	
	audio.beatCounters[0] = 1;
}



- (IBAction)slider0Moved:(id)sender {
	[slider0Label setStringValue:[NSString
								  stringWithFormat:@"%.0f",
								  [slider0 doubleValue]]];
}

- (IBAction)slider1Moved:(id)sender {
	[slider1Label setStringValue:[NSString
								  stringWithFormat:@"%.0f",
								  [slider1 doubleValue]]];
}

- (IBAction)slider2Moved:(id)sender {
	[slider2Label setStringValue:[NSString
								  stringWithFormat:@"%.0f",
								  [slider2 doubleValue]]];
}

- (IBAction)slider3Moved:(id)sender {
	[slider3Label setStringValue:[NSString
								  stringWithFormat:@"%.0f",
								  [slider3 doubleValue]]];
}

- (IBAction)slider4Moved:(id)sender {
	[slider4Label setStringValue:[NSString
								  stringWithFormat:@"%.0f",
								  [slider4 doubleValue]]];
}

- (IBAction)slider5Moved:(id)sender {
	[slider5Label setStringValue:[NSString
								  stringWithFormat:@"%.0f",
								  [slider5 doubleValue]]];
}

- (IBAction)slider6Moved:(id)sender {
	[slider6Label setStringValue:[NSString
								  stringWithFormat:@"%.0f",
								  [slider6 doubleValue]]];
}

- (IBAction)resetSlidersButtonPressed:(id)sender {
	[slider0 setDoubleValue:512];
	[slider1 setDoubleValue:512];
	[slider2 setDoubleValue:512];
	[slider3 setDoubleValue:512];
	[slider4 setDoubleValue:512];
	[slider5 setDoubleValue:512];
	[slider6 setDoubleValue:512];
	
	[slider0Label setStringValue:[NSString
								  stringWithFormat:@"%.0f",
								  [slider0 doubleValue]]];
	[slider1Label setStringValue:[NSString
								  stringWithFormat:@"%.0f",
								  [slider1 doubleValue]]];
	[slider2Label setStringValue:[NSString
								  stringWithFormat:@"%.0f",
								  [slider2 doubleValue]]];
	[slider3Label setStringValue:[NSString
								  stringWithFormat:@"%.0f",
								  [slider3 doubleValue]]];
	[slider4Label setStringValue:[NSString
								  stringWithFormat:@"%.0f",
								  [slider4 doubleValue]]];
	[slider5Label setStringValue:[NSString
								  stringWithFormat:@"%.0f",
								  [slider5 doubleValue]]];
	[slider6Label setStringValue:[NSString
								  stringWithFormat:@"%.0f",
								  [slider6 doubleValue]]];
	
	
}

- (IBAction)stepButtonPressed:(id)sender {
}
@end







































