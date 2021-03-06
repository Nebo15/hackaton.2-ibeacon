//
//  EBAppDelegate.h
//  EBNebo15
//
//  Created by Evgen Bakumenko on 10/31/13.
//  Copyright (c) 2013 Evgen Bakumenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@import CoreLocation;

static NSString *const FBSessionStateChangedNotification = @"FBSessionStateChangedNotification";
static NSString *const kNotificationSessionOpen = @"kNotificationSessionOpen";

@interface EBAppDelegate : UIResponder <UIApplicationDelegate, CLLocationManagerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UINavigationController *navigationController;

- (void)openSessionWithAllowLoginUI:(BOOL)allowLoginUI completion:(void(^)(BOOL))completion;
- (void)setDashboardToRootViewController;
@end
