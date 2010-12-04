// PhoneGapStripped is available under *either* the terms of the modified BSD license *or* the
// * MIT License (2008). See http://opensource.org/licenses/alphabetical for full text.  
//
//  PhoneGapStrippedAppDelegate.h
//  PhoneGapStripped
//
//  Created by aaron surty on 10-12-03.
//  Copyright 2010 Alcatel-Lucent. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PhoneGapStrippedViewController;

@interface PhoneGapStrippedAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    PhoneGapStrippedViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PhoneGapStrippedViewController *viewController;

@end

