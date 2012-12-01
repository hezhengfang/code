//
//  SwapViewController.m
//  Swap
//
//  Created by geine on 12/1/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "SwapViewController.h"

@implementation SwapViewController

@synthesize  landscape;
@synthesize  portrait;
@synthesize  landscapeFooButton;
@synthesize   portraitFooButton;
@synthesize   landscapeBarButton;
@synthesize   portraitBarButton;


-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation duration:(NSTimeInterval)duration
{
    
    if(interfaceOrientation == UIInterfaceOrientationPortrait )    {
        self.view  =self.portrait;
        self.view.transform = CGAffineTransformIdentity;
        self.view.transform = CGAffineTransformMakeRotation(degressToRadians(0));
        self.view.bounds = CGRectMake(0.0, 0.0, 300.0, 480);
        
    }
    else  if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft)
    {
        self.view =  self.landscape;
        self.view.transform  = CGAffineTransformIdentity;
        self.view.transform  =CGAffineTransformMakeRotation(degressToRadians(-90));
        self.view.bounds = CGRectMake(0.0, 0.0, 460.0, 320.0);
    }
    else  if(interfaceOrientation ==
             UIInterfaceOrientationPortraitUpsideDown)
    {
        self.view =  self.portrait;
        self.view.transform  = CGAffineTransformIdentity;
        self.view.transform  =CGAffineTransformMakeRotation(degressToRadians(180));
        self.view.bounds = CGRectMake(0.0, 0.0, 300.0, 480.0);
        
    }
    else if (interfaceOrientation ==
             UIInterfaceOrientationLandscapeRight)
    {
        self.view =  self.landscape;
        self.view.transform  = CGAffineTransformIdentity;
        self.view.transform  =CGAffineTransformMakeRotation(degressToRadians(90));
        self.view.bounds = CGRectMake(0.0, 0.0, 460.0, 320.0);
        
        
    }
}




-(IBAction)buttonPressed:(id)sender
{
    if(sender == portraitFooButton || sender ==landscapeBarButton)
    {
        portraitFooButton.hidden  = YES;
        landscapeFooButton.hidden =  YES;
    }
    
    else 
    {
        portraitBarButton.hidden = YES;
        landscapeBarButton.hidden = YES;
        
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
{
    
    self.landscape =nil;
    self.portrait =nil;
    self.landscapeBarButton = nil;
    self.landscapeFooButton = nil;
    self.portraitFooButton  = nil;
    self.portraitBarButton =nil;

    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    //return (interfaceOrientation == UIInterfaceOrientationPortrait);
    return YES;
}

@end
