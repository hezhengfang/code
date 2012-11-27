//
//  View_SwitcherAppDelegate.h
//  View Switcher
//
//  Created by geine on 11/27/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SwitchViewController;
@interface View_SwitcherAppDelegate : NSObject <UIApplicationDelegate>
{
    UIWindow  *window;
    SwitchViewController *switchViewController;
    
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SwitchViewController  
 *switchViewController;
@end
