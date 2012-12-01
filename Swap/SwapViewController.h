//
//  SwapViewController.h
//  Swap
//
//  Created by geine on 12/1/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#define  degressToRadians(x) (M_PI*(x) /180.0) 

@interface SwapViewController : UIViewController

{
    UIView *landscape;
    UIView *portrait;
    
    //FOO
    UIButton *landscapeFooButton;
    UIButton *portraitFooButton;
    //BAR
    UIButton *landscapeBarButton;
    UIButton *portraitBarButton;

}

@property (nonatomic,retain) IBOutlet UIView *landscape;
@property (nonatomic,retain) IBOutlet UIView *portrait;
@property (nonatomic,retain) IBOutlet UIButton *landscapeFooButton;
@property (nonatomic,retain) IBOutlet UIButton *portraitFooButton;
@property (nonatomic,retain) IBOutlet UIButton *landscapeBarButton;
@property (nonatomic,retain) IBOutlet UIButton *portraitBarButton;
-(IBAction)buttonPressed:(id)sender;
@end

