//
//  DIYViewController.h
//  DIYMenu
//
//  Created by Jonathan Beilin on 8/13/12.
//  Copyright (c) 2012 DIY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DIYViewController : UIViewController
{
    UILabel *label;

}

@property (retain, nonatomic) IBOutlet UIButton *menuButton;
@property (retain ,nonatomic) IBOutlet UILabel   *label;
-(IBAction)show:(id)sender;
 @end
