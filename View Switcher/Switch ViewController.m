//
//  Switch ViewController.m
//  View Switcher
//
//  Created by geine on 11/27/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "Switch ViewController.h"
#import "BlueViewController.h"
#import "YellowViewController.h"

@implementation Switch_ViewController
@synthesize yellowViewController;
@synthesize blueViewController;

-(void) viewDidLoad 
{
 BlueViewController *blueController = [[BlueViewController alloc]
                                       initWithNibName:@"BlueView" bundle:nil];
    self.blueViewController = blueController;
    [self.view insertSubview:blueController.view   atIndex:0];
    [blueController release];
    [super viewDidLoad];
    
}

-(IBAction)switchView:(id)sender
{
    [UIView beginAnimations:@"View Filp" context:nil];
    [UIView setAnimationDuration:1.25];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
     
    
 if(self.yellowViewController.view.superview ==nil)
 {
   if(self.yellowViewController ==nil)
   {
       YellowViewController *yellowController = 
       [[YellowViewController alloc] initWithNibName:@"Yellow" bundle:nil];
   
       self.yellowViewController = yellowViewController;
       [yellowController release];
   }
     [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight
                            forView:self.view  cache:YES];
     [blueViewController viewWillAppear:YES];
     [yellowViewController viewWillAppear:YES];
     [blueViewController.view removeFromSuperview];
     
     [self.view insertSubview:yellowViewController.view  atIndex:0];
     [yellowViewController viewDidDisappear:YES];
     [blueViewController viewDidDisappear:YES];
 
 
 }
else
{
    if(self.blueViewController ==nil)
    {
    BlueViewController *blueController = 
    [[BlueViewController alloc] initWithNibName:@"Blue" bundle:nil];
    
    self.blueViewController = blueController;
    [blueController release];
}
    
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight
                            forView:self.view  cache:YES];
     [yellowViewController viewWillAppear:YES];
     [blueViewController viewWillAppear:YES];
     [yellowViewController.view removeFromSuperview];
     
     [self.view insertSubview:blueViewController.view  atIndex:0];
     [blueViewController viewDidDisappear:YES];
     [yellowViewController viewDidDisappear:YES];



}
    
    
    
    [UIView commitAnimations];

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
    if(self.blueViewController.view.superview  == nil)
    {
        self.blueViewController = nil;
        
    }
    else 
        
    {
        self.yellowViewController = nil;
    }
    
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
