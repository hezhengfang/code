//
//  DependentComponentPickerViewController.h
//  Pickers
//
//  Created by cs Siteview on 12-11-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kStateComponent     0
#define kZipComponent       1

@interface DependentComponentPickerViewController : UIViewController 
    <UIPickerViewDelegate,UIPickerViewDataSource>
{
    UIPickerView    *picker;
    
    NSDictionary    *stateZips;
    NSArray         *states;
    NSArray         *zips;
}

@property (nonatomic, retain) IBOutlet UIPickerView *picker;
@property (nonatomic, retain) NSDictionary *stateZips;
@property (nonatomic, retain) NSArray *states;
@property (nonatomic, retain) NSArray *zips;

- (IBAction)buttonPressed;

@end
