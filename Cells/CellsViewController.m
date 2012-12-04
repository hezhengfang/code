//
//  CellsViewController.m
//  Cells
//
//  Created by geine on 12/3/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "CellsViewController.h"
#import "CustomCell.h"

@implementation CellsViewController
@synthesize  computers;



- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{

    NSDictionary *row1 =[[NSDictionary alloc] initWithObjectsAndKeys:
                         @"MacBook",@"Name",@"White",@"Color" ,nil];
    
    NSDictionary *row2 =[[NSDictionary alloc] initWithObjectsAndKeys:
                         @"MacBook Pro",@"Name",@"Sliver",@"Color" ,nil];
    NSDictionary *row3 =[[NSDictionary alloc] initWithObjectsAndKeys:
                         @"iMac",@"Name",@"White",@"Color" ,nil];
    
    NSDictionary *row4 =[[NSDictionary alloc] initWithObjectsAndKeys:
                         @"Mac Mini",@"Name",@"White",@"Color", nil];
    
    NSDictionary *row5 =[[NSDictionary alloc] initWithObjectsAndKeys:
                         @"Mac Pro",@"Name",@"Sliver",@"Color" ,nil];
    
    
    NSArray *array = [[NSArray alloc] initWithObjects:row1,row2,row3,row4 ,row5,nil];  
    
    
    self.computers = array;
    [row1 release];
    [row2 release];
    [row3 release];
    [row4 release];
    [row5 release];
    [array release];
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
 
    // e.g. self.myOutlet = nil;
    self.computers =nil;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void) dealloc 
{
    [computers release];
    [super dealloc];
    

}

#pragma  mark -
#pragma  mark Table Data Source Methods
-(NSInteger ) tableView:(UITableView *)tableView 
  numberOfRowsInSection:(NSInteger)section
{
    return [self.computers count];
    

}

/*-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   static NSString *CellTableIdentifier =@"CellTableIdentifier";
   
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellTableIdentifier];
    if(cell == nil)
    {
    
        cell =[[[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:CellTableIdentifier] autorelease];
        
        
        CGRect nameLabelRect = CGRectMake(0,5,70,15);
        UILabel * nameLabel = [[UILabel alloc] initWithFrame:nameLabelRect];
        nameLabel.textAlignment =  UITextAlignmentRight;
        nameLabel.text =@"Name";
        nameLabel.font =[UIFont boldSystemFontOfSize:12];
        [cell.contentView addSubview:nameLabel];
        [nameLabel release];
        
        CGRect colorLabelRect = CGRectMake(0,26,70,15);
        UILabel * colorLabel = [[UILabel alloc] initWithFrame:colorLabelRect];
        nameLabel.textAlignment =  UITextAlignmentRight;
        nameLabel.text =@"Color";
        nameLabel.font =[UIFont boldSystemFontOfSize:12];
        [cell.contentView addSubview:colorLabel];
        [colorLabel release];

       
        CGRect nameValueRect = CGRectMake(80,5,200,15);
        UILabel * nameValue = [[UILabel alloc] initWithFrame:nameValueRect];
        nameValue.tag =kNameValueTag ;
        [cell.contentView addSubview:nameValue];
        [nameValue release];

        CGRect colorValueRect = CGRectMake(80,25,200,15);
        UILabel * colorValue = [[UILabel alloc] initWithFrame:colorValueRect];
        colorValue.tag = kColorValueTag;
        [cell.contentView addSubview:colorValue];
        [colorValue release];

    }
    
    NSUInteger row = [indexPath row];
    NSDictionary *rowData = [self.computers objectAtIndex:row];
    UILabel *name = (UILabel *) [cell.contentView 
                                 viewWithTag:kNameValueTag];
    name.text = [rowData objectForKey:@"Name"];
    
    UILabel *color = (UILabel *) [cell.contentView 
                                  viewWithTag :kColorValueTag];
    color.text =  [rowData objectForKey:@"color"];
    return cell;
}*/

-(UITableViewCell *) tableView:(UITableView *)tableView 
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   static NSString *CustomCellIdentifier =@"CustomCellIdentifier";
   
    CustomCell *cell  =(CustomCell *) [tableView 
                                       dequeueReusableCellWithIdentifier:CustomCellIdentifier];
    if(cell == nil)
    {
     NSArray *nib =[[NSBundle mainBundle] loadNibNamed:@"CustomCell"
                                                 owner:self
                                               options:nil];
        
        for(id oneObject in nib)
        {
         if([oneObject isKindOfClass:[CustomCell class]])
             cell = (CustomCell*) oneObject;
        }
        
    }
                                     
    NSUInteger row = [indexPath row];
    NSDictionary *rowData = [self.computers objectAtIndex:row];
    cell.colorLabel.text = [rowData objectForKey:@"Color"];
    cell.nameLabel.text = [rowData  objectForKey:@"Name"];
    return cell;
            
}

-(CGFloat) tableView:(UITableView *)tableView 
heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return  kTableViewRowHeight;

}

@end
