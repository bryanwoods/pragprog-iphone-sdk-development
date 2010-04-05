//
//  MovieEditorViewController.m
//  Movie
//
//  Created by Bryan Woods on 4/4/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MovieEditorViewController.h"
#import "Movie.h"


@implementation MovieEditorViewController

@synthesize titleField;
@synthesize boxOfficeGrossField;
@synthesize summaryField;
@synthesize movie;

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	self.titleField.text = self.movie.title;
	self.summaryField.text = self.movie.summary;
	NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
	[formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
	self.boxOfficeGrossField.text =
	[formatter stringFromNumber:self.movie.boxOfficeGross];
	[formatter release];
}

- (IBAction)done {
	[[self parentViewController] dismissModalViewControllerAnimated:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
	[textField resignFirstResponder];
	return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
	if(textField == self.titleField) {
		self.movie.title = self.titleField.text;
	} else if(textField == self.boxOfficeGrossField) {
		NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
		[formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
		self.movie.boxOfficeGross = 
        [formatter numberFromString:self.boxOfficeGrossField.text];
		[formatter release];
	} else if(textField == self.summaryField) {
		self.movie.summary = self.summaryField.text;
	}
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
