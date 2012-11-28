//
//  DependentComponentPickerViewController.m
//  Pickers
//
//  Created by cs Siteview on 12-11-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "DependentComponentPickerViewController.h"


@implementation DependentComponentPickerViewController

@synthesize states;
@synthesize zips;
@synthesize stateZips;
@synthesize picker;

- (IBAction)buttonPressed
{
    NSInteger stateRow = [picker selectedRowInComponent:kStateComponent];
    NSInteger zipRow = [picker selectedRowInComponent:kZipComponent];
    
    NSString *state = [self.states objectAtIndex:stateRow];
    NSString *zip = [self.zips objectAtIndex:zipRow];
    
    NSString *title = [[NSString alloc] initWithFormat:@"You selected zip code %@.",zip];
    NSString *message = [[NSString alloc] initWithFormat:@"%@ is in %@",zip,state];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                    message:message 
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
    [alert release];
    [message release];
    [title release];
}

- (void)viewDidLoad
{
    //提取对应用程序的主束，NSBundle的一个主要作用就是获取添加到项目的supporting Files文件夹的资源
    NSBundle *bundle = [NSBundle mainBundle];       
    NSString *plistPath = [bundle pathForResource:@"statedictionary" ofType:@"plist"];  //获取需要的资源路径
    
    //载入所需要资源的内容
    NSDictionary *dictionary = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    self.stateZips = dictionary;
    [dictionary release];
    
    NSArray *components = [self.stateZips allKeys];
    NSArray *sorted = [components sortedArrayUsingSelector:@selector(compare:)];    //对字典的所有键按字母顺序进行排序
    self.states = sorted;
    
    NSString *selectedState = [self.states objectAtIndex:0];
    NSArray *array = [stateZips objectForKey:selectedState];
    self.zips = array;
    
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    self.picker = nil;
    self.stateZips = nil;
    self.states = nil;
    self.zips = nil;
    [super viewDidUnload];
}

- (void)dealloc
{
    [states release];
    [stateZips release];
    [picker release];
    [zips release];
    [super dealloc];
}

#pragma mark -
#pragma mark Picker Data Source Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == kStateComponent)
    {
        return [self.states count];
    }
    
    return [self.zips count];
}

#pragma mark Picker Delegate Methods

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component == kStateComponent)
    {
        return [self.states objectAtIndex:row];
    }
    
    return [self.zips objectAtIndex:row];
}

//设置第二栏的内容根据第一栏的值而改变
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (component == kStateComponent)
    {
        NSString *selectedState = [self.states objectAtIndex:row];
        NSArray *array = [stateZips objectForKey:selectedState];
        self.zips = array;
        
        [picker selectRow:0 inComponent:kZipComponent animated:YES];
        [picker reloadComponent:kZipComponent];
    }
}

- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    if (component == kZipComponent)
    {
        return  90;
    }
    
    return 200;
}

@end
