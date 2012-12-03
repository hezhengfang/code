//
//  Simple_TableViewController.h
//  Simple Table
//
//  Created by geine on 12/3/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Simple_TableViewController : UIViewController
<UITableViewDelegate ,UITableViewDataSource>
{
 
    NSArray *listDate;
    

}
@property (nonatomic ,retain) NSArray *listDate;

@end
