//
//  Control_FunViewController.h
//  Control Fun
//
//  Created by geine on 11/23/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Control_FunViewController : UIViewController

{
    UITextField  *nameField;
    UITextField  *numberField;
    
}

@property (nonatomic ,retain) IBOutlet UITextField *nameField;
@property (nonatomic ,retain) IBOutlet UITextField *numberField;
- (IBAction) textFieldDoneEditing:(id)sender;
- (IBAction) backgroundTap:(id)sender;
@end
