//
//  Client.h
//  Projeect
//
//  Created by Brandon Beecroft on 10/4/14.
//  Copyright (c) 2014 Awesometistic, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Project;

@interface Client : NSManagedObject

@property (nonatomic, retain) NSString * clientName;
@property (nonatomic, retain) NSSet *projects;
@end

@interface Client (CoreDataGeneratedAccessors)

- (void)addProjectsObject:(Project *)value;
- (void)removeProjectsObject:(Project *)value;
- (void)addProjects:(NSSet *)values;
- (void)removeProjects:(NSSet *)values;

@end
