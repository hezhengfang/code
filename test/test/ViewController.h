//
//  ViewController.h
//  test
//
//  Created by geine on 12/21/12.
//  Copyright (c) 2012 geine. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel *myLabelView;
    UISlider *mySliderView;
    UIWebView *myWebView;
}

 //@property(retain ,nonatomic) IBOutlet  UILabel  alabel;


@property(nonatomic ,retain) IBOutlet  UILabel   *myLabelView;
@property (nonatomic ,retain) IBOutlet UISlider   *mySliderView;
@property (nonatomic ,retain)  IBOutlet UIWebView  *myWebView;
-(IBAction):(id)sendersliderValueChanged:(UISlider *)sender;
@end