//
//  MyCustomObj.h
//  PhoneGapStripped
//
//  Created by aaron surty on 10-12-04.
//  Copyright 2010 Alcatel-Lucent. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhoneGapCommand.h"


@interface MyCustomObj : PhoneGapCommand {

}

- (void)callJavascript;
- (void)calledFromJavascript:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;

@end
