//
//  MyCustomObj.m
//  PhoneGapStripped
//
//  Created by aaron surty on 10-12-04.
//  Copyright 2010 Alcatel-Lucent. All rights reserved.
//

#import "MyCustomObj.h"


@implementation MyCustomObj

- (void)calledFromJavascript:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options {
	NSString *title = [arguments objectAtIndex:0];
	NSString *message = [arguments objectAtIndex:1];
	NSString *cancel = [options objectForKey:@"cancelButton"];
	[[[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:cancel otherButtonTitles:nil] show];
}


- (void)callJavascript {
	NSString *str = [webView stringByEvaluatingJavaScriptFromString:@"calledFromObjectiveC();"];
	if(str) {
		NSLog(@"it worked : %@", str);
	} else {
		NSLog(@"it did not work");
	}
}

@end