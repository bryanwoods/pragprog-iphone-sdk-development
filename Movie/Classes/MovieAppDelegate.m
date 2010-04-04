//
//  MovieAppDelegate.m
//  Movie
//
//  Created by Bryan Woods on 4/4/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "MovieAppDelegate.h"
#import "MovieViewController.h"

@implementation MovieAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
