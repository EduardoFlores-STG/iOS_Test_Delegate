//
//  FIrstViewController.h
//  Test_Delegate
//
//  Created by Eduardo Flores on 3/20/15.
//  Copyright (c) 2015 Eduardo Flores. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface FIrstViewController : UIViewController <SecondViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *label_receivedText;

- (IBAction)button_startSecondView:(id)sender;

@end
