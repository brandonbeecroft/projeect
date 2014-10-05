//
//  Session.h
//  Projeect
//
//  Created by Brandon Beecroft on 10/4/14.
//  Copyright (c) 2014 Awesometistic, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Project;

@interface Session : NSManagedObject

@property (nonatomic, retain) NSDate * sessionStartTime;
@property (nonatomic, retain) NSDate * sessionEndTime;
@property (nonatomic, retain) NSString * sessionDescription;
@property (nonatomic, retain) NSNumber * sessionTotalTime;
@property (nonatomic, retain) Project *project;

@end
