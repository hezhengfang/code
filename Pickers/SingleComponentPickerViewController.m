//
//  SingleComponentPickerViewController.m
//  Pickers
//
//  Created by cs Siteview on 12-11-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "SingleComponentPickerViewController.h"


@implementation SingleComponentPickerViewController

@synthesize singlePicker;
@synthesize pickerData;

- (IBAction)buttonPressed
{
    NSInteger row = [singlePicker selectedRowInComponent:0];
    NSString *selected = [pickerData objectAtIndex:row];
    NSString *title = [[NSString alloc]initWithFormat:@"You selected %@!",selected];
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:title
                                                   message:@"Thank you for choosing."
                                                   delegate:nil
                                         cancelButtonTitle:@"You're Welcome"
                                         otherButtonTitles:nil];
    [alert show];
    [alert release];
    [title release];
}

- (void)dealloc
{
    [singlePicker release];
    [pickerData release];
    [super dealloc];
}

- (void)viewDidLoad
{
    //创建数组，用于向选取器提供数据
    NSArray *array = [[NSArray alloc] initWithObjects:@"Luke",@"Leia",
                      @"Han",@"chewbacca",@"Artoo",@"Threepio",@"Lando",nil];
    self.pickerData = array;
    [array release];
     
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    self.pickerData = nil;
    self.singlePicker = nil;
    
    [super viewDidUnload];
}

//特定于程序或特定于编译器的指令
#pragma mark -
#pragma mark Picker Data Source Methods

//指定选取器的组件数
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView  
{
    return 1;
}

//询问给定组件包含多少行数据
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [pickerData count];
}

//实现委托方法，必须实现一个
#pragma mark Picker Delegate Methods    

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [pickerData objectAtIndex:row];
}

@end
