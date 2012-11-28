//
//  CustomPickerViewController.m
//  Pickers
//
//  Created by cs Siteview on 12-11-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "CustomPickerViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@implementation CustomPickerViewController

@synthesize picker;
@synthesize winLabel;
@synthesize column1;
@synthesize column2;
@synthesize column3;
@synthesize column4;
@synthesize column5;
@synthesize button;

- (IBAction)spin
{
    BOOL win = NO;
    int numInRow = 1;
    int lastVal = -1;

    for (int i = 0; i < 5; i++) 
    {
        int newValue = rand() % [self.column1 count];
        
        if (newValue == lastVal)
        {
            numInRow++;
        }
        else
        {
            numInRow = 1;
        }
        
        lastVal = newValue;
        [picker selectRow:newValue inComponent:i animated:YES];
        [picker reloadComponent:i];
        
        if (numInRow >= 3)
        {
            win = YES;
        }
    }
    
    button.hidden = YES;
    NSString *path = [[NSBundle mainBundle] pathForResource:@"crunch" ofType:@"wav"];
    SystemSoundID soundID;
    AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:path], &soundID);
    AudioServicesPlaySystemSound(soundID);
    
    if (win) 
    {
        [self performSelector:@selector(playWinSound) withObject:nil afterDelay:.5];
    }
    else
    {
        [self performSelector:@selector(showButton) withObject:nil afterDelay:.5];
    }
/*    if (win)
    {
        winLabel.text = @"WIN!";
    }
    else
    {
        winLabel.text = @"";
    }*/
}

- (void)dealloc
{
    [picker release];
    [winLabel release];
    [column1 release];
    [column2 release];
    [column3 release];
    [column4 release];
    [column5 release];
    [button release];
    
    [super dealloc];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    //载入图像
     UIImage *seven = [UIImage imageNamed:@"seven.png"];
     UIImage *bar = [UIImage imageNamed:@"bar.png"];
     UIImage *crown = [UIImage imageNamed:@"crown.png"];
     UIImage *cherry = [UIImage imageNamed:@"cherry.png"];
     UIImage *lemon = [UIImage imageNamed:@"lemon.png"];
     UIImage *apple = [UIImage imageNamed:@"apple.png"];
 
    for (int i = 1; i <= 5; i++)
    {
        UIImageView *sevenView = [[UIImageView alloc] initWithImage:seven];
        UIImageView *barView = [[UIImageView alloc] initWithImage:bar];
        UIImageView *crownView = [[UIImageView alloc] initWithImage:crown];
        UIImageView *cherrynView = [[UIImageView alloc] initWithImage:cherry];
        UIImageView *lemonView = [[UIImageView alloc] initWithImage:lemon];
        UIImageView *appleView = [[UIImageView alloc] initWithImage:apple];
        
        NSArray *imageViewArray = [[NSArray alloc] initWithObjects:sevenView,barView,
                                   crownView,cherrynView,lemonView,appleView, nil];
        
        NSString *fieldName = [[NSString alloc] initWithFormat:@"column%d",i];
        [self setValue:imageViewArray forKey:fieldName];    //根据属性名称设置属性
        [fieldName release];
        [imageViewArray release];
        
        [sevenView release];
        [barView release];
        [crownView release];
        [cherrynView release];
        [lemonView release];
        [appleView release];
    }
    
    srandom(time(NULL));
    
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    self.picker = nil;
    self.winLabel = nil;
    self.column1 = nil;
    self.column2 = nil;
    self.column3 = nil;
    self.column4 = nil;
    self.column5 = nil;
    self.button = nil;
    
    [super viewDidUnload];
}

#pragma mark -
#pragma mark Picker Data Source Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 5;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.column1 count];
}

#pragma mark Picker Delegate Methods

-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    NSString *arrayName = [[NSString alloc] initWithFormat:@"column%d",component + 1];
    NSArray *array = [self valueForKey:arrayName];
    [arrayName release];
    
    return [array objectAtIndex:row];
}

- (void)showButton
{
    button.hidden = NO;
}

- (void)playWinSound
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"win" ofType:@"wav"];
    SystemSoundID soundID;
    AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:path], &soundID);
    AudioServicesPlaySystemSound(soundID);
    winLabel.text = @"WIN!";
    [self performSelector:@selector(showButton) withObject:nil afterDelay:1.5];
}

@end
