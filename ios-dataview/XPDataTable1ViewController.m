//
//  XPDataTableViewController.m
//  ios-dataview
//
//  Created by Bartłomiej Wilczyński on 12/22/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "XPDataTable1ViewController.h"
#import "XPDataGroup.h"
#import "XPDataCell.h"
#import "XPSwitchDataCell.h"
#import "XPSliderDataCell.h"
#import "XPCheckmarkDataCell.h"
#import "XPPickerDataCell.h"

@implementation XPDataTable1ViewController

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    XPDataGroup *group1 = [[XPDataGroup alloc] initWithText:@"Basic cells"];
    
    XPDataCell *cell1 = [[XPDataCell alloc] initWithText:@"Sample cell 1"];
    XPDataCell *cell2 = [[XPDataCell alloc] initWithText:@"Sample cell 2"];
    XPSwitchDataCell *cell3 = [[XPSwitchDataCell alloc] initWithText:@"Sample switch" on:YES];
    XPSliderDataCell *cell4 = [[XPSliderDataCell alloc] initWithText:@"Sample slider" value:.5f];
    
    group1.cells = [NSArray arrayWithObjects:cell1, cell2, cell3, cell4, nil];
    
    XPDataGroup *checkmarkGroup = [[XPDataGroup alloc] initWithText:@"Checkmark cells"];
    
    XPDataCell *checkmark1 = [[XPCheckmarkDataCell alloc] initWithText:@"Checkmark 1" checked:YES];
    XPDataCell *checkmark2 = [[XPCheckmarkDataCell alloc] initWithText:@"Checkmark 2"];
    XPDataCell *checkmark3 = [[XPCheckmarkDataCell alloc] initWithText:@"Checkmark 3"];

    checkmarkGroup.cells = [NSArray arrayWithObjects:checkmark1, checkmark2, checkmark3, nil];
    
    XPDataGroup *pickerGroup = [[XPDataGroup alloc] initWithText:@"Picker group"];
    
    NSArray *colors = [NSArray arrayWithObjects:@"Red", @"Green", @"Blue", nil];
    XPDataCell *picker1 = [[XPPickerDataCell alloc] initWithText:@"Color" items:colors value:@"Green"];
    
    NSArray *numbers = [NSArray arrayWithObjects:[NSNumber numberWithInt:1], [NSNumber numberWithInt:2], nil];
    XPDataCell *picker2 = [[XPPickerDataCell alloc] initWithText:@"Number" items:numbers value:[NSNumber numberWithInt:2] format:^NSString *(NSObject *item) {
        NSNumber *number = (NSNumber *)item;
        return [NSString stringWithFormat:@"%d", [number intValue]];
    }];
    
    pickerGroup.cells = [NSArray arrayWithObjects:picker1, picker2, nil];
    
    self.dataGroups = [NSArray arrayWithObjects:group1, checkmarkGroup, pickerGroup, nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
