//
//  Switch ViewController.h
//  View Switcher
//
//  Created by geine on 11/27/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@class BlueViewController;
@class YellowViewController;

@interface Switch_ViewController : UIViewController 
{
    YellowViewController  *yellowViewController;
    BlueViewController    *blueViewControlller;

}

@property (nonatomic, retain)YellowViewController  *yellowViewController;
@property (nonatomic, retain)BlueViewController    *blueViewController;
-(IBAction)switchView:(id)sender;

@end
