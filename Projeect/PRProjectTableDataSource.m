//
//  PRProjectTableDataSource.m
//  Projeect
//
//  Created by Brandon Beecroft on 10/4/14.
//  Copyright (c) 2014 Awesometistic, LLC. All rights reserved.
//


#import "PRProjectTableDataSource.h"
#import "ProjeectCustomTableCell.h"

@implementation PRProjectTableDataSource

-(void)registerTableView:(UITableView *)tableView {
    // ASK: it only works if the forCellReuseItentifier is is something different?
    [tableView registerClass:[ProjeectCustomTableCell class] forCellReuseIdentifier:@"cell"];
    [self queryProjectList:tableView];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ProjeectCustomTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ProjectCell" forIndexPath:indexPath];

    PFObject *project = [self.userProjects objectAtIndex:indexPath.row];

    cell.projectName.text = [project objectForKey:@"projectName"];
    cell.clientName.text = [project objectForKey:@"clientName"];
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.userProjects.count;

}

-(void)queryProjectList:(UITableView *)tableView {

    if ([PFUser currentUser].objectId == nil) {
        NSLog(@"current user was nil");
    } else {
    PFQuery *query = [PFQuery queryWithClassName:@"Projects"];
    [query whereKey:@"createdBy" equalTo:[PFUser currentUser]];

    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // do something with objects?
            NSLog(@"Object count: %li",objects.count);
            self.userProjects = objects;
            [tableView reloadData];
        }
    }];
    }
}

@end
