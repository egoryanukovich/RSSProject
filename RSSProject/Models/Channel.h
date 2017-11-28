//
//  Channel.h
//  RSSProject
//
//  Created by Egor Yanukovich on 11/28/17.
//  Copyright © 2017 Egor Yanukovich. All rights reserved.
//

#import <Realm/Realm.h>
#import "News.h"

@interface Channel : RLMObject

@property (nonatomic, strong) NSString *channelTitle;
@property RLMArray<News *><News> *news;

@end

RLM_ARRAY_TYPE(Channel)
