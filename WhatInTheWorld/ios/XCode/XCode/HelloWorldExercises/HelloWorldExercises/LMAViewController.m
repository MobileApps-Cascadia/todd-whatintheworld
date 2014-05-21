//
//  LMAViewController.m
//  HelloWorldExercises
//
//  Created by Jung, Terry on 5/7/14.
//  Copyright (c) 2014 Learning Mobile Apps. All rights reserved.
//

#import "LMAViewController.h"

@interface LMAViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
@property (weak, nonatomic) IBOutlet UILabel *lblOutput;
- (IBAction)showOutput:(UIButton *)sender;

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
// Second line declares a string variable (NSSSTring) & assigns the value in teh text field (_txtName) by calling the text methods on the property
// An underscore is used to refer to the property
// Third line declares an NSString object that is initialized with a string that combines the string "Hello" with the name variable followed by an exclamation mark
// Last line calls the setText method on the label, passing in teh value of the output string
- (IBAction)showOutput:(UIButton *)sender {
    NSString *name1 = [_firstName text];
    NSString *name2 = [_lastName text];
    NSString *output = [NSString stringWithFormat:
                        @"Hello %@ %@!", name1, name2];
    [_lblOutput setText:output];
}
@end

