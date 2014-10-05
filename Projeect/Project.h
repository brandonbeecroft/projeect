//
//  Project.h
//  Projeect
//
//  Created by Brandon Beecroft on 10/4/14.
//  Copyright (c) 2014 Awesometistic, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Client, Session;

@interface Project : NSManagedObject

@property (nonatomic, retain) NSString * projectName;
@property (nonatomic, retain) NSNumber * totalTimeWorked;
@property (nonatomic, retain) NSString * projectNote;
@property (nonatomic, retain) Client *client;
@property (nonatomic, retain) NSSet *sessions;
@end

@interface Project (CoreDataGeneratedAccessors)

- (void)addSessionsObject:(Session *)value;
- (void)removeSessionsObject:(Session *)value;
- (void)addSessions:(NSSet *)values;
- (void)removeSessions:(NSSet *)values;

@end
