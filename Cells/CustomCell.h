//
//  CustomCell.h
//  Cells
//
//  Created by geine on 12/3/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
{
    UILabel *nameLabel;
    UILabel *colorLabel;


}
@property (nonatomic ,retain) IBOutlet UILabel *nameLabel;
@property (nonatomic ,retain) IBOutlet UILabel *colorLabel; 

@end
