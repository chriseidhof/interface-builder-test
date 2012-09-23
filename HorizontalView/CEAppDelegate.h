//
//  CEAppDelegate.h
//  HorizontalView
//
//  Created by Chris Eidhof on 9/23/12.
//  Copyright (c) 2012 Chris Eidhof. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CEViewController;

@interface CEAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) CEViewController *viewController;

@end
