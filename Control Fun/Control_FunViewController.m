//
//  Control_FunViewController.m
//  Control Fun
//
//  Created by geine on 11/29/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "Control_FunViewController.h"

@implementation Control_FunViewController
@synthesize nameField;
@synthesize numberField;
@synthesize sliderLabel;
@synthesize leftSwitch;
@synthesize  rightSwitch;
@synthesize  dosomethingButton;



-(IBAction)toggleControls:(id)sender
{
if([sender selectedSegmentIndex] == kSwitchesSegmentIndex)
{
    leftSwitch.hidden = NO;
    rightSwitch.hidden =NO;
    dosomethingButton.hidden =YES;     

}
    else
    {
        leftSwitch.hidden =YES;
        rightSwitch.hidden =YES;
        dosomethingButton =NO;
    }
}

-(IBAction)switchChanged:(id)sender
{
    UISwitch *whichSwitch = (UISwitch *) sender;
    BOOL setting =  whichSwitch.isOn;
    [leftSwitch setOn:setting  animated:YES];
    [rightSwitch setOn: setting
              animated:YES];


}
-(IBAction)buttonPressed:(id)sender
{
 //TODO: Implement:(id) sender 
    UIActionSheet *actionSheet = [[ UIActionSheet alloc]
                                  initWithTitle:@"Are you sure?"
                                  delegate:self
                                  cancelButtonTitle:@"No Way"
                                  destructiveButtonTitle:@"Yes I am sure"
                                  otherButtonTitles: nil];
    [actionSheet showInView:self.view];
    [actionSheet release];

}

-(void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex
{
 if(buttonIndex !=[actionSheet cancelButtonIndex])
 {
     NSString *msg =nil;
     if(nameField.text.length >0)
         msg = [[NSString alloc] initWithFormat:@"you can breate easery,%@,everything went OK.",nameField.text];
     else
         msg = @"you can breate easy,everythig went OK.";
     UIAlertView *alert = [[UIAlertView alloc] 
                           initWithTitle:@"Something was done"
                           message:msg 
                           delegate:self
                           cancelButtonTitle:@"phew"
                           otherButtonTitles: nil];
     [alert show];
     [alert release];
     [msg release];
 
 }


}

-(IBAction)sliderChanged:(id)sender
{
    UISlider * slider = (UISlider *) sender;
    int progressAsInt = (int) (slider.value +0.5);
    NSString *newText =[[NSString alloc]
                        initWithFormat:@"%d",progressAsInt];
    sliderLabel.text = newText;
    [newText release];
}


-(IBAction)backgroundTap:(id)sender
{
    [nameField resignFirstResponder];
    [numberField resignFirstResponder];

}
 
-(IBAction)textFieldDoneEditinge:(id)sender
{
    [sender resignFirstResponder];


}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
