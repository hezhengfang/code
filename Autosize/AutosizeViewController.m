//
//  AutosizeViewController.m
//  Autosize
//
//  Created by geine on 12/1/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "AutosizeViewController.h"

@implementation AutosizeViewController
@synthesize button1;
@synthesize button2;
@synthesize button3;
@synthesize button4;
@synthesize button5;
@synthesize button6;




-(void) willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation duration:(NSTimeInterval)duration
{
if(interfaceOrientation == UIInterfaceOrientationPortrait
   ||interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown)
{
    button1.frame = CGRectMake(20, 20, 125, 125);
    button2.frame = CGRectMake(175, 20, 125, 125);
    button3.frame = CGRectMake(20, 168, 125,  125);
    button4.frame = CGRectMake(175, 168, 125, 125);
    button5.frame = CGRectMake(20, 315, 125, 125);
    button6.frame = CGRectMake(175, 315, 125, 125); 
}
else {
    button1.frame = CGRectMake(20, 20, 125, 125);
    button2.frame = CGRectMake(20, 155, 125, 125);   
    button3.frame = CGRectMake(177, 20, 125, 125); 
    button4.frame = CGRectMake(177, 155, 125, 125);
    button5.frame = CGRectMake(328, 20, 125, 125);
    button6.frame = CGRectMake(328, 155, 125, 125); 
    

   
  }

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
{   self.button1=nil;
    self.button2= nil;
    self.button3=nil;
    self.button4=nil;
    self.button5=nil;
    self.button6= nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
   // return (interfaceOrientation == UIInterfaceOrientationPortrait);
    //return  YES;
    return (interfaceOrientation !=
            UIInterfaceOrientationPortraitUpsideDown);
}

@end
