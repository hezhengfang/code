//
//  ViewController.m
//  DropDownDemo
//
//  Created by geine on 12/7/12.
//  Copyright (c) 2012 geine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


@synthesize ddMenu, ddText;
@synthesize ddMenuShowButton;
- ( IBAction ) ddMenuShow : ( UIButton * ) sender
{
    if ( sender.tag == 0 ) {
        sender.tag = 1 ;
        self.ddMenu.hidden = NO ;
        [ sender setTitle : @ "▲" forState : UIControlStateNormal ] ;
    } else {
        sender.tag = 0 ;
        self.ddMenu.hidden = YES ;
        [ sender setTitle : @ "▼" forState : UIControlStateNormal ] ;
    }
}
- ( IBAction ) ddMenuSelectionMade : ( UIButton * ) sender
{
    self.ddText.text = sender.titleLabel.text;
    [ self.ddMenuShowButton setTitle : @ "▼" forState : UIControlStateNormal ] ;
    self.ddMenuShowButton.tag = 0 ;
    self.ddMenu.hidden = YES ;
    switch ( sender.tag ) {
        case 1 :
            self.view.backgroundColor = [ UIColor redColor ] ;
            break ;
        case 2 :
            self.view.backgroundColor = [ UIColor blueColor ] ;
            break ; 
        case 3 : 
            self.view.backgroundColor = [ UIColor greenColor ] ; 
            break ; 
            
        default : 
            break ; 
    } 
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
