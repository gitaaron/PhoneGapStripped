// PhoneGapStripped is available under *either* the terms of the modified BSD license *or* the
// * MIT License (2008). See http://opensource.org/licenses/alphabetical for full text.  
//
//  WebViewWrapper.h
//  PhoneGapStripped
//
//  Created by aaron surty on 10-12-04.
//  Copyright 2010 Alcatel-Lucent. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface WebViewWrapper : NSObject <UIWebViewDelegate> {
	UIWebView *webView;
}

@property (nonatomic, retain)UIWebView *webView;

- (id)initWithWebView:(UIWebView *)myWebView;

- (void)callJavascript;

@end
