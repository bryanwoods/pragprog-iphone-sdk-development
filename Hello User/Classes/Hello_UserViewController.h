//
//  Hello_UserViewController.h
//  Hello User
//
//  Created by Bryan Woods on 4/4/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Hello_UserViewController : UIViewController <UITextFieldDelegate> {
	
	IBOutlet UILabel *helloLabel;
	IBOutlet UITextField *nameField;

}

- (IBAction) sayHello: (id) sender;

@property (nonatomic, retain) UILabel *helloLabel;
@property (nonatomic, retain) UITextField *nameField;

@end

