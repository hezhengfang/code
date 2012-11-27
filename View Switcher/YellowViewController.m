//
//  YellowViewController.m
//  View Switcher
//
//  Created by geine on 11/27/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "YellowViewController.h"

@implementation YellowViewController

-(IBAction) yellowButtonPressed
{
    UIAlertView *alert =[[UIAlertView alloc]
                         initWithTitle:@"Yellow View Button Pressed"
                         message:@"you pressed the button on Yellow view"
                         delegate:nil
                         cancelButtonTitle:@"YES I do!"
                         otherButtonTitles: nil];
    [alert show];
    [alert release];
    
    
    
    
    
    
}






- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

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
