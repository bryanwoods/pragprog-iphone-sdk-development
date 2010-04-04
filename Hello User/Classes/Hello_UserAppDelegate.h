//
//  Hello_UserAppDelegate.h
//  Hello User
//
//  Created by Bryan Woods on 4/4/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Hello_UserViewController;

@interface Hello_UserAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Hello_UserViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Hello_UserViewController *viewController;

@end

