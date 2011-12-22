//
//  XPAppDelegate.h
//  ios-dataview
//
//  Created by Bartłomiej Wilczyński on 12/22/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XPDataTableViewController;

@interface XPAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) XPDataTableViewController *viewController;

@end
