//
//  ProjectController.h
//  Projeect
//
//  Created by Brandon Beecroft on 10/7/14.
//  Copyright (c) 2014 Awesometistic, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h> 

#import "Stack.h"
#import "Project.h"

@interface ProjectController : NSObject

-(NSArray *)projects;
-(void) addNewProject:(NSString *)projectName forClient:(NSString *)clientName withProjectNote:(NSString *)projectNote;

@end
