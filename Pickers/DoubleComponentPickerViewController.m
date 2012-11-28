//
//  DoubleComponentPickerViewController.m
//  Pickers
//
//  Created by cs Siteview on 12-11-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "DoubleComponentPickerViewController.h"


@implementation DoubleComponentPickerViewController

@synthesize doublePicker;
@synthesize fillingTypes;
@synthesize breadTypes;

- (IBAction)buttonPressed
{
    NSInteger breadRow = [doublePicker selectedRowInComponent:kBreadComponent];
    NSInteger fillingRow = [doublePicker selectedRowInComponent:kFillingComponent];
    
    NSString *bread = [breadTypes objectAtIndex:breadRow];
    NSString *filling = [fillingTypes objectAtIndex:fillingRow];
    
    NSString *message = [[NSString alloc]initWithFormat:
                         @"Your %@ on %@ bread will be right up.",filling,bread];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Thank you for you order"
                                                    message:message
                                                   delegate:nil
                                          cancelButtonTitle:@"Great!"
                                          otherButtonTitles:nil];
    [alert show];
    [alert release];
    [message release];
}

- (void)viewDidLoad
{
    NSArray *breadArray = [[NSArray alloc] initWithObjects:@"White",
                           @"Whole Wheat",@"Rye",@"Sourdough",@"Seven Grain",nil];
    self.breadTypes = breadArray;
    [breadArray release];
    
    NSArray *fillingArray = [[NSArray alloc] initWithObjects:@"Ham",@"Turkey",
                             @"Peanut Butter",@"Tuna Salad",@"Chicken Salad",
                             @"Roast Beef",@"Vegemite",nil];
    self.fillingTypes = fillingArray;
    [fillingArray release];
    
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    self.fillingTypes = nil;
    self.breadTypes = nil;
    self.doublePicker = nil;
    
    [super viewDidUnload];
}

- (void)dealloc
{
    [fillingTypes release];
    [breadTypes release];
    [doublePicker release];
    
    [super dealloc];
}

#pragma mark -
#pragma mark Picker Data Source Methods

-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == kBreadComponent)
    {
        return [self.breadTypes count];
    }
    
    return [self.fillingTypes count];
}

#pragma mark Picker Delegate Methods

- (NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component == kBreadComponent)
    {
        return [self.breadTypes objectAtIndex:row];
    }
    
    return [self.fillingTypes objectAtIndex:row];
}

@end
