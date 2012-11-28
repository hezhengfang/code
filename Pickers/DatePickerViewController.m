//
//  DatePickerViewController.m
//  Pickers
//
//  Created by cs Siteview on 12-11-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "DatePickerViewController.h"


@implementation DatePickerViewController

@synthesize datePicker;

- (IBAction)buttonPressed
{
    NSData *selected = [datePicker date];
    
    NSString *message = [[NSString alloc] initWithFormat:
                         @"The date and time you selected is: %@",selected];
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Date and Time Selected!"
                          message:message delegate:nil
                          cancelButtonTitle:@"Yes,I did!"
                          otherButtonTitles:nil];
    [alert show];
    [alert release];
    [message release];
}

- (void)viewDidLoad
{
    NSData *now = [[NSData alloc] init];
    //[datePicker setDate:now animated:NO];
    [now release]; 
    
    //[datePicker setDate:[datePicker date] animated:NO];
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    self.datePicker = nil;
    [super viewDidUnload];
}

- (void)dealloc
{
    [super dealloc];
}

@end
