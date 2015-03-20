//
//  FIrstViewController.m
//  Test_Delegate
//
//  Created by Eduardo Flores on 3/20/15.
//  Copyright (c) 2015 Eduardo Flores. All rights reserved.
//

#import "FIrstViewController.h"

@interface FIrstViewController ()

@end

@implementation FIrstViewController
@synthesize label_receivedText;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // hide the nagivation bar to force the use of buttons created in the UI
    self.navigationController.navigationBar.hidden = YES;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)button_startSecondView:(id)sender
{
    [self performSegueWithIdentifier:@"segueSecondView" sender:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    SecondViewController *svc = (SecondViewController *)[segue destinationViewController];
    svc.delegate = self;
}

- (void)textFromSecondView:(NSString *)text
{
    label_receivedText.text = text;
}
@end
