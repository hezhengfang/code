//
//  PickersAppDelegate.h
//  Pickers
//
//  Created by cs Siteview on 12-11-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickersAppDelegate : NSObject <UIApplicationDelegate> 
{
    UITabBarController *rootController;
}

//在MainWindow.xib中要将这两个输出口分配给对应的控件，其中window分配给window
@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UITabBarController *rootController;
@end
