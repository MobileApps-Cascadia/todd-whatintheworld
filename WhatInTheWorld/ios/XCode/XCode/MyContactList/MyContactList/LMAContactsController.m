//
//  LMAFirstViewController.m
//  MyContactList
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

// In View Mode, text fields are disabled, border for text fields are not there, the "Change" button should be gone
// In Edit Mdoe, text fields are enabled, border is set to Rounded Rectangle mode and the button is hidden
- (IBAction)changeEditMode:(id)sender {
    // NSArray object containing all the text fields 
    NSArray *textFields = @[_txtName, _txtAddress, _txtCity, _txtState, _txtZip, _txtPhone, _txtCell, _txtEmail];
    
    // If it is View Mode
    if (_sgmtEditMode.selectedSegmentIndex == 0){
        for (UITextField *txtfield in textFields) {
            [txtfield setEnabled:NO];
            [txtfield setBorderStyle:UITextBorderStyleNone];
        }
        [_btnChange setHidden:YES];
    }
    // If it is Edit Mode
    else if (_sgmtEditMode.selectedSegmentIndex == 1)
    {
        for (UITextField *txtfield in textFields) {
            [txtfield setEnabled:YES];
            [txtfield setBorderStyle:UITextBorderStyleRoundedRect];
        }
        [_btnChange setHidden:NO];
    }
}

@end
