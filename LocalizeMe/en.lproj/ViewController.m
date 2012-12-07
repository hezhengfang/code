//
//  ViewController.m
//  LocalizeMe
//
//  Created by geine on 12/7/12.
//  Copyright (c) 2012 geine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize localeLabel;
@synthesize label1;
@synthesize label2;
@synthesize label3;
@synthesize label4;
@synthesize label5;


- (void)viewDidLoad
{
    NSLocale *locale =[NSLocale currentLocale];
    NSString *diaplayNameString = [locale displayNameForKey:NSLocaleIdentifier value:[locale localeIdentifier]  ];
    localeLabel.text = diaplayNameString;
    label1.text = NSLocalizedString(@"one","The number one");
      label2.text = NSLocalizedString(@"two","The number two");
      label3.text = NSLocalizedString(@"three","The number three");
      label4.text = NSLocalizedString(@"four","The number four");
      label5.text = NSLocalizedString(@"five","The number five");
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
