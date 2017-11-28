//
//  ChannelCell.h
//  RSSProject
//
//  Created by Egor Yanukovich on 11/28/17.
//  Copyright © 2017 Egor Yanukovich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChannelCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *channelNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *newsCountLabel;

@end
