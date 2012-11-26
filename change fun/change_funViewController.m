//
//  change_funViewController.m
//  change fun
//
//  Created by geine on 11/26/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "change_funViewController.h"

@implementation change_funViewController
@synthesize nameField;
@synthesize numberField;
@synthesize sliderLaber;
@synthesize leftSwitch ;
@synthesize rightSwitch;
@synthesize dosomethingButton;



-(IBAction) toggleChanged:(id)sender
{
   if([sender  selectedSegmentIndex] == kSwitchesSegmentIndex )
   {
       leftSwitch.hidden = NO;
       rightSwitch.hidden = NO;
       dosomethingButton  =YES;
   }

    else
    {
        leftSwitch.hidden = YES;
        rightSwitch.hidden =YES;
        dosomethingButton  =NO;
    
    }
}



- (IBAction)switchChanged:(id)sender
{
    UISwitch *whichSwitch = (UISwitch*) sender;
    BOOL setting = whichSwitch.isOn;
    [leftSwitch  setOn: setting animated:YES];
    [rightSwitch setOn: setting  animated:YES];
}

-(IBAction)buttonPressed:(id)sender
{
 // TODO:Implement Action Sheeet and Alert
    UIActionSheet *actionSheet =  [[UIActionSheet alloc ]
                                   initWithTitle:@"Are you sure?"
                                   delegate:self
                                   cancelButtonTitle:@"No Way"destructiveButtonTitle:@"Yes,I'am sure " otherButtonTitles: nil]; 
    [actionSheet showInView:self.view];
    [actionSheet release];

    
}
-(void) actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if(buttonIndex != [actionSheet cancelButtonIndex])
    {
        NSString *msg=nil;
        if(nameField.text.length >0)
            msg= [[NSString alloc] initWithFormat:
                  @"you can breathe easy,%@,everything went OK.",nameField.text];
        else
           msg=@"You can breathe easy ,%@, everything went OK.";
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"something was done"
                              message:msg
                              delegate:self
                              cancelButtonTitle:@"phew!"
                              otherButtonTitles:nil];
        [alert show];
        [alert release];
        [msg release];
    }
    
    
}
-(IBAction)  sliderChanged:(id)sender
{
    UISlider *slider = (UISlider *)sender;
    int progressAsInt  = (int) (slider.value+0.5f);
    NSString *newText = [[NSString alloc ] initWithFormat:@"%d",progressAsInt ];
                         sliderLaber.text = newText;
                         [newText  release];

}
-(IBAction) backgroundTap:(id)sender
{
    [nameField resignFirstResponder];
    [numberField resignFirstResponder];
}
-(IBAction)textFieldDoneEditing:(id)sender
{
    [sender resignFirstResponder];
}



-(void) viewDidLoad 
{
    UIImage *buttonIamgeNomal  = [UIImage imageNamed:@"witheButton.png"];
    UIImage *sretchableImageNomal = [buttonIamgeNomal
                                     stretchableImageWithLeftCapWidth:12 topCapHeight:0];
    
    [dosomethingButton setBackgroundImage:sretchableImageNomal
                                 forState: UIControlStateNormal];
    
    UIImage  *buttonImagePressed =  [UIImage imageNamed:@"blueButton.png"];
    UIImage  *strechableButtonImagePressed = [buttonImagePressed
                                              stretchableImageWithLeftCapWidth:12 topCapHeight:0];
  [dosomethingButton   setBackgroundImage:strechableButtonImagePressed 
                                 forState:UIControlStateHighlighted];

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
