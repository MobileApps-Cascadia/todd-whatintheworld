//
//  LMAViewController.m
//  HelloWorld
//
//  Created by Jung, Terry on 5/7/14.
//  Copyright (c) 2014 Learning Mobile Apps. All rights reserved.
//

#import "LMAViewController.h"

@interface LMAViewController ()

// These refer to the text fields
@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
// When you click on it, the number keypad/keyboard will show up instead of the text
@property (weak, nonatomic) IBOutlet UITextField *number;

// These denote to the buttons
@property (weak, nonatomic) IBOutlet UILabel *lblOutput;
- (IBAction)showOutput:(UIButton *)sender;
- (IBAction)clearOutput:(UIButton *)sender;
- (IBAction)defaultOutput:(UIButton *)sender;

@end

@implementation LMAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// First line is method declaration
// Last line calls the setText method on the label, passing in teh value of the output string
// %@ is the same thing as {0} in C#
- (IBAction)showOutput:(UIButton *)sender {
    NSString *name1 = [_firstName text];
    NSString *name2 = [_lastName text];
    NSString *output = [NSString stringWithFormat:
                        @"Hello %@ %@!", name1, name2];
    [_lblOutput setText:output];
}

// This will clear the entries within the text boxes
- (IBAction)clearOutput:(UIButton *)sender {
    [_firstName setText:@""];
    [_lastName setText:@""];
}

// This will make the "Default" button change the output text to "Hello World"
- (IBAction)defaultOutput:(UIButton *)sender {
    NSString *output = [NSString stringWithFormat:
                        @"Hello World!"];
    [_lblOutput setText:output];
}

// This will implement the method you created in LMAViewController.h
-(IBAction)backgroundTap:(id)sender
{
    [self.view endEditing: YES];
}
@end


