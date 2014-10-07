//
//  customTimeCellTableViewCell.h
//  Projeect
//
//  Created by Brandon Beecroft on 10/6/14.
//  Copyright (c) 2014 Awesometistic, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface customTimeCellTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *projectNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *clientNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeOnProjectLabel;

@end
