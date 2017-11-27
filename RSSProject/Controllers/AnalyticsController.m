//
//  AnalyticsController.m
//  RSSProject
//
//  Created by Egor Yanukovich on 11/27/17.
//  Copyright © 2017 Egor Yanukovich. All rights reserved.
//

#import "AnalyticsController.h"
#import "AnalyticsCell.h"

@interface AnalyticsController () <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) NSString* analyticsURL;

@property (weak, nonatomic) IBOutlet UITableView *analyticsTableView;

@end

@implementation AnalyticsController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.analyticsURL = @"https://widgets.spotfxbroker.com:8088/GetAnalyticsRss?domain=fxopen.com";
    [self.analyticsTableView setDelegate:self];
    [self.analyticsTableView setDataSource:self];
    
    [self.analyticsTableView registerNib:[UINib nibWithNibName:@"AnalyticsCell" bundle:nil] forCellReuseIdentifier:@"AnalyticsCellID"];
}

#pragma MARK - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat heightForRowAtIndexPath = 80.0;
    return heightForRowAtIndexPath;
}
#pragma MARK - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSInteger numberOfRowsInSection = 10;
    return numberOfRowsInSection;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* analyticsIdentifier = @"AnalyticsCellID";
    AnalyticsCell* cell = (AnalyticsCell*)[tableView dequeueReusableCellWithIdentifier:analyticsIdentifier];
    
    if (!cell) {
        cell = [[AnalyticsCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:analyticsIdentifier];
    }
    cell.newsDateLabel.text = @"23.10.12";
    cell.newsHeaderLabel.text = @"OHOHO";
    return cell;
}

@end

