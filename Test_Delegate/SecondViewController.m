//
//  SecondViewController.m
//  Test_Delegate
//
//  Created by Eduardo Flores on 3/20/15.
//  Copyright (c) 2015 Eduardo Flores. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize textField_enterSomeText;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button_sendTextBack:(id)sender
{
    // Send the data to whatever class implements the delegate
    [self.delegate textFromSecondView:textField_enterSomeText.text];
    
    // pop the view controller
    [[self navigationController]popViewControllerAnimated:YES];
}

@end
