//
//  NewsController.m
//  RSSProject
//
//  Created by Egor Yanukovich on 11/27/17.
//  Copyright © 2017 Egor Yanukovich. All rights reserved.
//

#import "NewsController.h"
#import "AnalyticsCell.h"

@interface NewsController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) NSString* newsURL;
@property (strong, nonatomic) IBOutlet UITableView *newsTableView;
@end

@implementation NewsController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.newsURL = @"https://widgets.spotfxbroker.com:8088/GetLiveNewsRss?domain=fxopen.com";
    
    self.newsTableView.delegate = self;
    self.newsTableView.dataSource = self;
    
     [self.newsTableView registerNib:[UINib nibWithNibName:@"AnalyticsCell" bundle:nil] forCellReuseIdentifier:@"AnalyticsCellID"];
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
    cell.newsDateLabel.text = @"15.10.12";
    cell.newsHeaderLabel.text = @"TUTITU";
    return cell;
}

@end
