//
//  PREnterNewProjectViewController.m
//  Projeect
//
//  Created by Brandon Beecroft on 10/6/14.
//  Copyright (c) 2014 Awesometistic, LLC. All rights reserved.
//

#import <Parse/Parse.h>

#import "ProjectController.h"
#import "PREnterNewProjectViewController.h"

@interface PREnterNewProjectViewController () 

@end

@implementation PREnterNewProjectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self.projectName becomeFirstResponder];
}

- (IBAction)cancel:(id)sender {
    [self.view endEditing:YES];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)saveProject:(id)sender {
    NSLog(@"save project");

    NSString *projectName = self.projectName.text;
    NSString *projectNote = self.projectNotes.text;
    NSString *clientName = self.clientName.text;

    [[ProjectController sharedInstance] addNewProject:projectName forClient:clientName withProjectNote:projectNote];
    [self.view endEditing:YES];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
