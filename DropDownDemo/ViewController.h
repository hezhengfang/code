//
//  ViewController.h
//  DropDownDemo
//
//  Created by geine on 12/7/12.
//  Copyright (c) 2012 geine. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    UILabel *ddText;
    UIView *ddMenu;
    UIButton *ddMenuShowButton;

}

@property ( nonatomic, strong ) IBOutlet UILabel * ddText;
@property ( nonatomic, strong ) IBOutlet UIView * ddMenu;
@property ( nonatomic, strong ) IBOutlet UIButton * ddMenuShowButton;
- ( IBAction ) ddMenuShow : ( UIButton * ) sender;
- ( IBAction ) ddMenuSelectionMade : ( UIButton * ) sender;

@end
