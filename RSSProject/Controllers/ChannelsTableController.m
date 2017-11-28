//
//  ChannelsTableController.m
//  RSSProject
//
//  Created by Egor Yanukovich on 11/28/17.
//  Copyright © 2017 Egor Yanukovich. All rights reserved.
//

#import "ChannelsTableController.h"
#import "ChannelCell.h"
#import "NewsController.h"

static NSString* kChannelCellID = @"ChannelCellID";

@interface ChannelsTableController ()

@property (strong, nonatomic) IBOutlet UITableView *channelsTableView;

@end

@implementation ChannelsTableController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.channelsTableView registerNib:[UINib nibWithNibName:@"ChannelCell" bundle:nil] forCellReuseIdentifier:kChannelCellID];

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
    ChannelCell* cell = (ChannelCell*)[tableView dequeueReusableCellWithIdentifier:kChannelCellID];
    
    if (!cell) {
        cell = [[ChannelCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kChannelCellID];
    }
    cell.channelNameLabel.text = @"firstChannel";
    cell.newsCountLabel.text = @"20";
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"ExampleSegue" sender:tableView];
}


@end
