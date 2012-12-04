//
//  CellsViewController.h
//  Cells
//
//  Created by geine on 12/3/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kTableViewRowHeight 66
//#define kNameValueTag 1
//#define kColorValueTag 2


@interface CellsViewController : UIViewController
<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *computers;
}
@property (nonatomic ,retain) NSArray *computers;
@end

