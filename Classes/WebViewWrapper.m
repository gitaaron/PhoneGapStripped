// PhoneGapStripped is available under *either* the terms of the modified BSD license *or* the
// * MIT License (2008). See http://opensource.org/licenses/alphabetical for full text.  
//  WebViewWrapper.m
//  PhoneGapStripped
//
//  Created by aaron surty on 10-12-04.
//  Copyright 2010 Alcatel-Lucent. All rights reserved.
//

#import "WebViewWrapper.h"


@implementation WebViewWrapper
@synthesize webView;


-(id)initWithWebView:(UIWebView *)myWebView {
	if(self = [super init]) {
		self.webView = myWebView;
		self.webView.delegate = self;
	}
	return self;
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
	NSURL *url = [request URL];
	NSLog(@"url : %@", [url	description]);
	return YES;
}

- (void)callJavascript {
	NSString *str = [self.webView stringByEvaluatingJavaScriptFromString:@"calledFromObjectiveC();"];
	if(str) {
		NSLog(@"it worked : %@", str);
	} else {
		NSLog(@"it did not work");
	}
}

- (void)dealloc {
	self.webView = nil;
    [super dealloc];
}
@end
