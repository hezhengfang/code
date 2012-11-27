//
//  AutosizeAppDelegate.h
//  Autosize
//
//  Created by geine on 11/26/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AutosizeViewController;

@interface AutosizeAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet AutosizeViewController *viewController;

@end
