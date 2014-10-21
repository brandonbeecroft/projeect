//
//  ProjectController.h
//  Projeect
//
//  Created by Brandon Beecroft on 10/7/14.
//  Copyright (c) 2014 Awesometistic, LLC. All rights reserved.
//
#import <Parse/Parse.h>
#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h> 

#import "Stack.h"

@interface ProjectController : NSObject

+ (ProjectController *)sharedInstance;

- (NSArray *)projects;
- (void) addNewProject:(NSString *)projectName forClient:(NSString *)clientName withProjectNote:(NSString *)projectNote;

@end
