//
//  LMAFirstViewController.m
//  MyContactListExercises
//
//  Created by Jung, Terry on 5/12/14.
//  Copyright (c) 2014 Learning Mobile Apps. All rights reserved.
//

#import "LMAContactsController.h"

@interface LMAContactsController ()

@end

@implementation LMAContactsController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _scrollView.contentSize = CGSizeMake(320, 500);
}


// This is added to fix the bug in iOS 7 that sets the size of the scroll view to (0, 0)
-(void)viewDidLayoutSubviews
{
    _scrollView.contentSize = CGSizeMake(320, 500);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)backgroundTap:(id)sender
{
    [self.view endEditing:YES];
}

- (IBAction)switchEditMode:(id)sender {
    // You need to have all the text field ids listed here so that when you use the method, it will disable the user from changing the text field 
    NSArray *textFields = @[_txtFirstName, _txtLastName, _txtAddress, _txtCity, _txtState, _txtZip, _txtPhone, _txtCell, _txtEmail];
    
    // If the button is on, allow the user to change the text fields
    if(_swchEditMode.on) {
        for (UITextField *txtfield in textFields) {
            [txtfield setEnabled:YES];
            [txtfield setBorderStyle:UITextBorderStyleRoundedRect];
        }
        [_btnChange setHidden:NO];
    }
    // Else if the button is off, do not allow the user to change the text fields
    else {
        for (UITextField *txtfield in textFields) {
            [txtfield setEnabled:NO];
            [txtfield setBorderStyle:UITextBorderStyleNone];
        }
    }
}
@end
