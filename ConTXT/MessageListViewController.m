//
//  MessageListViewController.m
//  ConTXT
//
//  Created by Dallas Vaughan on 8/25/12.
//  Copyright (c) 2012 Dallas Vaughan. All rights reserved.
//

#import "MessageListViewController.h"
#import "MessageTableViewCell.h"

@interface MessageListViewController ()

@end

@implementation MessageListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    MessageStore *store = [MessageStore defaultStore];
    return [[store messages] count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Create an instance of UITableViewCell, with default appearance
    // Check for a reusable cell first, use that if it exists
    MessageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MessageTableViewCell"];
    
    // If there is no reusable cell of this type, create a new one
    if (!cell) {
        cell = [[MessageTableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
               reuseIdentifier:@"MessageTableViewCell"];
    }
    // Set the text on the cell with the description of the item
    // that is at the nth index of items, where n = row this cell
    // will appear in on the tableview

    Message *message = [[[MessageStore defaultStore] messages]
                  objectAtIndex:[indexPath row]];
    [[cell textLabel] setText:@"Test"];
    //cell.text.text = message.text;
    cell.sender.text = message.sender;
    cell.date.text = message.dateContext.description;
    return cell;
}

@end
