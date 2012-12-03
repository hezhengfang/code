//
//  Simple_TableViewController.m
//  Simple Table
//
//  Created by geine on 12/3/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "Simple_TableViewController.h"

@implementation Simple_TableViewController
@synthesize listDate;



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
    NSArray *arry=[[NSArray alloc] initWithObjects:@"Asleepy",@"Sneezy",@"Bashful",@"Happy",@"Doc",@"Grumpy",@"Dopey",@"Thorin",@"Dorin",
                   @"Fill",@"Kill",@"Bombur",@"Gloin",@"Oin",@"Thorin",
                   @"Balin",@"Nori",nil];
    self.listDate =arry;
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    self.listDate =nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
-(void) dealloc 
{
    [listDate release];
    [super dealloc];
}

#pragma mark -
#pragma  mark  Table View   Date Source Methods
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.listDate count];
    
}


 -(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *SimpleTableIdentifier =@"SimpleTableIdentifier";
    
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    if(cell == nil)
    {
     cell =[[[UITableViewCell alloc] 
            initWithStyle:UITableViewCellStyleValue2
             reuseIdentifier:SimpleTableIdentifier] autorelease];
        
    }
    
    UIImage *image = [UIImage imageNamed:@"blueStar.png"];
    cell.imageView.image = image;
    
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [listDate objectAtIndex:row];
    cell.textLabel.font = [UIFont boldSystemFontOfSize:50];
    
    if(row > 7) 
        cell.detailTextLabel.text = @"Mr.Disney";
    else
        cell.detailTextLabel.text =@"Tolkein";
    
    return cell;

}
#pragma mark -
#pragma mark Table Delegate Methods

-(NSInteger) tableView:(UITableView *)tableView 
indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger row = [indexPath row];
    return row;
}

-(NSIndexPath *)tableView:(UITableView *)tableView 
 willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger row =[indexPath row];
    if(row >7)
        return nil;
    return  indexPath;

}



-(void) tableView:(UITableView *)tableView 
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger row = [indexPath row];
    NSString *rowValue = [listDate objectAtIndex:row];
    NSString *message =[[NSString alloc ] initWithFormat:
                        @"You selected%@:",rowValue];
    
    UIAlertView * alert =[[UIAlertView alloc]
                          initWithTitle:
                          @"Row selected!"
                          message:message
                          delegate:nil
                          cancelButtonTitle:@"Yes I did"
                          otherButtonTitles: nil];
    [alert show];
    [message release];
    [alert release];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];


}


-(CGFloat) tableView:(UITableView *)tableView 
heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return  70;
}

@end
