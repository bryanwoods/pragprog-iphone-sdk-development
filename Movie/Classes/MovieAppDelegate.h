//
//  MovieAppDelegate.h
//  Movie
//
//  Created by Bryan Woods on 4/4/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MovieViewController;

@interface MovieAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MovieViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MovieViewController *viewController;

@end

