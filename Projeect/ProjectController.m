//
//  ProjectController.m
//  Projeect
//
//  Created by Brandon Beecroft on 10/7/14.
//  Copyright (c) 2014 Awesometistic, LLC. All rights reserved.
//

#import "ProjectController.h"
#import "Project.h"

@implementation ProjectController

+ (ProjectController *)sharedInstance {
    static ProjectController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[ProjectController alloc] init];
    });
    return sharedInstance;
}

-(NSArray *)projects{

    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Project"];

    NSArray *arrayOfProjects = [[Stack sharedInstance].managedObjectContext executeFetchRequest:request error:nil];
    return arrayOfProjects;
}

-(void)addNewProject:(NSString *)projectName forClient:(NSString *)clientName withProjectNote:(NSString *)projectNote {

    // new project instance
    Project *project = [NSEntityDescription insertNewObjectForEntityForName:@"Project" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    
    // assign the project attributes
    project.projectName = projectName;
    project.clientName = clientName;
    project.projectNote = projectNote;

    // call a sync method
    [self sync];
}

-(void)sync{
    // save the managedObjectContext
    [[Stack sharedInstance].managedObjectContext save:nil];
}

@end
