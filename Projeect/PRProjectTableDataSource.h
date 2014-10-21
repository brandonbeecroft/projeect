//
//  PRProjectTableDataSource.h
//  Projeect
//
//  Created by Brandon Beecroft on 10/4/14.
//  Copyright (c) 2014 Awesometistic, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "ProjectController.h"


@interface PRProjectTableDataSource : NSObject <UITableViewDataSource>

@property (nonatomic, strong) NSArray *userProjects;

-(void) registerTableView:(UITableView *)tableView;

@end
