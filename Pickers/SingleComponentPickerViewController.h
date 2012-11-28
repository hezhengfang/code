//
//  SingleComponentPickerViewController.h
//  Pickers
//
//  Created by cs Siteview on 12-11-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SingleComponentPickerViewController : UIViewController 
    <UIPickerViewDelegate,UIPickerViewDataSource>{
    UIPickerView    *singlePicker;
    NSArray         *pickerData;
}

@property (nonatomic, retain) IBOutlet UIPickerView *singlePicker;
@property (nonatomic, retain) NSArray *pickerData;

- (IBAction)buttonPressed;

@end
