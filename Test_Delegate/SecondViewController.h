//
//  SecondViewController.h
//  Test_Delegate
//
//  Created by Eduardo Flores on 3/20/15.
//  Copyright (c) 2015 Eduardo Flores. All rights reserved.
//

#import <UIKit/UIKit.h>

// declare the delegate
@protocol SecondViewDelegate <NSObject>

- (void) textFromSecondView:(NSString *)text;

@end

// Declare the created delegate into our class
@interface SecondViewController : UIViewController

// Original declaration in our header
@property (nonatomic, weak) id<SecondViewDelegate> delegate;

@property (weak, nonatomic) IBOutlet UITextField *textField_enterSomeText;
- (IBAction)button_sendTextBack:(id)sender;

@end
