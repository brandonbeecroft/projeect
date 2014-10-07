//
//  PRProjectTableDataSource.m
//  Projeect
//
//  Created by Brandon Beecroft on 10/4/14.
//  Copyright (c) 2014 Awesometistic, LLC. All rights reserved.
//

#import "PRProjectTableDataSource.h"

@implementation PRProjectTableDataSource

-(void)registerTableView:(UITableView *)tableView {
    //[tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];

    UINib *nib = [UINib nibWithNibName:@"customTimeCellTableViewCell" bundle:nil];
    [tableView registerNib:nib forCellReuseIdentifier:@"ItemCell"];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    //cell.textLabel.text = @"Temp text";
    customTimeCellTableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:@"ItemCell"];
    cell.projectNameLabel.text = @"Project name here";

    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

@end
