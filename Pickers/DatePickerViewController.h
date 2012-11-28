//
//  DatePickerViewController.h
//  Pickers
//
//  Created by cs Siteview on 12-11-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DatePickerViewController : UIViewController 
{
    UIDatePicker    *datePicker;
}

@property (nonatomic, retain) IBOutlet UIDatePicker *datePicker;

- (IBAction)buttonPressed;

@end
