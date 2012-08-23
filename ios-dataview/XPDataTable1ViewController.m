/*
 * ios-dataview - Sample project that uses ios-datatable
 *
 * Copyright (c) 2012 XPerienced Bartłomiej Wilczyński
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 */

#import "XPDataTable1ViewController.h"
#import "XPDataTable.h"
#import "XPDataCell+Configuration.h"

@interface MyDataCellConfiguration : NSObject<XPDataCellConfigurationDelegate>

@end

@implementation MyDataCellConfiguration

- (void)dataCell:(XPDataCell *)dataCell configureTableViewCell:(UITableViewCell *)tableViewCell forTableView:(UITableView *)tableView {
    tableViewCell.textLabel.textColor = [UIColor redColor];
}

@end

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
    
    [[XPDataCell configuration] setDelegate:[[MyDataCellConfiguration alloc] init] forClass:[XPDataCell class]];

    XPDataGroup *group1 = [[XPDataGroup alloc] initWithText:@"Basic cells"];
    
    XPDataCell *cell1 = [[XPDataCell alloc] initWithText:@"Sample cell 1"];
    XPDataCell *cell2 = [[XPDataCell alloc] initWithText:@"Sample cell 2"];
    XPSwitchDataCell *cell3 = [[XPSwitchDataCell alloc] initWithText:@"Sample switch" on:YES];
    XPSliderDataCell *cell4 = [[XPSliderDataCell alloc] initWithText:@"Sample slider" value:.5f];
    XPTextFieldDataCell *cell5 = [[XPTextFieldDataCell alloc] initWithText:@"Text field"];
    
    group1.cells = [NSArray arrayWithObjects:cell1, cell2, cell3, cell4, cell5, nil];
    
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
    
    XPDataGroup *disclosureDataGroup = [[XPDataGroup alloc] initWithText:@"Disclosure group"];
    
    XPDataCell *disclosureDataCell1 = [[XPDisclosureDataCell alloc] initWithText:@"Color" items:colors value:@"Green"];
    XPDataCell *disclosureDataCell2 = [[XPDisclosureDataCell alloc] initWithText:@"Number" items:numbers value:[NSNumber numberWithInt:2] format:^NSString *(NSObject *item) {
        NSNumber *number = (NSNumber *)item;
        return [NSString stringWithFormat:@"%d", [number intValue]];
    }];

    disclosureDataGroup.cells = [NSArray arrayWithObjects:disclosureDataCell1, disclosureDataCell2, nil];
    
    self.dataGroups = [NSArray arrayWithObjects:group1, checkmarkGroup, pickerGroup, disclosureDataGroup, nil];
    
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
