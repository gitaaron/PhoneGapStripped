// PhoneGapStripped is available under *either* the terms of the modified BSD license *or* the
// * MIT License (2008). See http://opensource.org/licenses/alphabetical for full text.  
//
//  PhoneGapStrippedViewController.h
//  PhoneGapStripped
//
//  Created by aaron surty on 10-12-03.
//  Copyright 2010 Alcatel-Lucent. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhoneGapWrapper.h"

@interface PhoneGapStrippedViewController : UIViewController {
	PhoneGapWrapper *pWrapper;
}

@property (nonatomic, retain)PhoneGapWrapper *pWrapper;

- (NSString *)pathToIndexPage;


@end

