//
//  NewsCell.h
//  RSSProject
//
//  Created by Egor Yanukovich on 11/28/17.
//  Copyright © 2017 Egor Yanukovich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *newsHeaderLabel;
@property (weak, nonatomic) IBOutlet UILabel *pubDateLabel;

@end
