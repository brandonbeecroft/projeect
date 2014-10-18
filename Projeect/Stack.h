//
//  Stack.m
//
//  Created by Joshua Howland on 6/12/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <CoreData/CoreData.h> 
#import <Foundation/Foundation.h>

@interface Stack : NSObject

+ (Stack *)sharedInstance;

@property (nonatomic, strong, readonly) NSManagedObjectContext *managedObjectContext;

@end