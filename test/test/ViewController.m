//
//  ViewController.m
//  test
//
//  Created by geine on 12/21/12.
//  Copyright (c) 2012 geine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//	// Do any additional setup after loading the view, typically from a nib.
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewDidLoad
{
     [super viewDidLoad];
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width-50.f, 300)];
    view.backgroundColor=[self colorWithHexString:@"#DAA520"	];
    [self.view addSubview:view];
    UISlider *mySlider=[[UISlider alloc]initWithFrame:CGRectMake(0, 240, 200, 23)];
    mySlider.center=self.view.center;
    mySlider.minimumValue=0;
    mySlider.maximumValue=100;
    mySlider.value=mySlider.maximumValue /2;
    [mySlider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:mySlider];
    self.mySliderView=mySlider;
    NSString *htmlString=@"我的<b>iPhone</b>程序";
    [self.myWebView loadHTMLString:htmlString baseURL:nil];

    UIWebView *twoWebView =[[UIWebView alloc]initWithFrame:CGRectMake(0, 100, 200, 100)];
    NSURL *urlBai=[NSURL URLWithString:@"http://www.baidu.com"];
    NSURLRequest *request=[NSURLRequest requestWithURL:urlBai];
    [twoWebView loadRequest:request];
    [self.myWebView addSubview:twoWebView];

    
}
- (UIColor *) colorWithHexString: (NSString *)color
{
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) {
     return [UIColor clearColor];
        }
    
      // strip 0X if it appears
    if ([cString hasPrefix:@"0X"])
        cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return [UIColor clearColor];
    
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    
    //r
    NSString *rString = [cString substringWithRange:range];
    
    //g
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    //b
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:1.0f];
    
    
    
   }

-(IBAction):sliderValueChanged:(UISlider *) sender{
    if ([sender isEqual:mySliderView]) {
        NSLog(@"Value %f",floor(sender.value));
        self.myLabelView.text=[NSString stringWithFormat:@"%d",(int)sender.value];
    }
}

@end
