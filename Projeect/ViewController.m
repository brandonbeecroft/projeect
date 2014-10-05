//
//  ViewController.m
//  Projeect
//
//  Created by Brandon Beecroft on 10/4/14.
//  Copyright (c) 2014 Awesometistic, LLC. All rights reserved.
//

#import "ViewController.h"
#import "PRProjectTableDataSource.h"

@interface ViewController () <UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *mainTitleNavigationBar;
@property (weak, nonatomic) IBOutlet UILabel *subTitleNavigationBar;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) PRProjectTableDataSource *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSDate *today = [NSDate date];
    NSString *dateString = [NSDateFormatter localizedStringFromDate:today dateStyle:NSDateFormatterLongStyle timeStyle:NSDateFormatterNoStyle];
    NSLog(@"Date string: %@",dateString);

    self.mainTitleNavigationBar.text = dateString;
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];

    self.navigationController.navigationBar.barStyle = UIStatusBarStyleLightContent;
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];

    self.dataSource = [PRProjectTableDataSource new];
    [self.dataSource registerTableView:self.tableView];
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self;

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

@end
