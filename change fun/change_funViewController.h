//
//  change_funViewController.h
//  change fun
//
//  Created by geine on 11/26/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kSwitchesSegmentIndex   0

@interface change_funViewController : UIViewController
<UIActionSheetDelegate>

{
    UITextField *nameField;
    UITextField *numberField;
    UILabel     *sliderLabel;
    UISwitch    *leftSwitch;
    UISwitch    *rightSwithc;
    UIButton    *dosomethingButton;
    
}

@property  (nonatomic ,retain) IBOutlet UITextField *nameField;
@property  (nonatomic ,retain) IBOutlet UITextField *numberField;
@property  (nonatomic ,retain) IBOutlet UILabel     *sliderLaber;
@property  (nonatomic , retain) IBOutlet UISwitch   *leftSwitch;
@property  (nonatomic , retain) IBOutlet UISwitch   *rightSwitch;
@property  (nonatomic ,retain ) IBOutlet UIButton   *dosomethingButton; 
-(IBAction)textFieldDoneEditing:(id)sender;
-(IBAction)backgroundTap:(id)sender;
-(IBAction)toggleChanged:(id)sender;
-(IBAction)switchChanged:(id)sender;
-(IBAction)buttonPressed:(id)sender;
@end
