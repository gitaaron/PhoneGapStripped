// PhoneGapStripped is available under *either* the terms of the modified BSD license *or* the
// * MIT License (2008). See http://opensource.org/licenses/alphabetical for full text.  
//
//  PhoneGapStrippedViewController.m
//  PhoneGapStripped
//
//  Created by aaron surty on 10-12-03.
//  Copyright 2010 Alcatel-Lucent. All rights reserved.
//

#import "PhoneGapStrippedViewController.h"
#import "WebViewWrapper.h"
#import "MyCustomObj.h"

@implementation PhoneGapStrippedViewController

@synthesize pWrapper;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

- (NSString *)pathToIndexPage {
	return [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	CGRect windowSize = [UIScreen mainScreen].bounds;
	
	// create webview
	UIWebView *w = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, windowSize.size.width, windowSize.size.height/2)];
	NSURL *u = [NSURL fileURLWithPath:[self pathToIndexPage]];
	NSURLRequest *r = [NSURLRequest requestWithURL:u cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:20.0];
	[w loadRequest:r];
	

	// create button
	UIButton *b = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	b.frame = CGRectMake(0, windowSize.size.height/2, windowSize.size.width, windowSize.size.height/2);
	[b setTitle:@"click me to call javascript" forState:(UIControlState)UIControlStateNormal];
	
	
	
	// create wrapper and pass in webview
	PhoneGapWrapper *wr = [[PhoneGapWrapper alloc] initWithWebView:w];
	
	// create mycustomobj.. only necessary for calling javascript
	MyCustomObj *mc = [wr getCommandInstance:@"MyCustomObj"];
	[b addTarget:mc action:@selector(callJavascript) forControlEvents:UIControlEventTouchDown];



	// add to view hierarchy
	[self.view addSubview:w];
	[self.view addSubview:b];
    [super viewDidLoad];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
