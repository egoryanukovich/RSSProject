//
//  News.h
//  RSSProject
//
//  Created by Egor Yanukovich on 11/27/17.
//  Copyright © 2017 Egor Yanukovich. All rights reserved.
//

#import <Realm/Realm.h>

@interface News : RLMObject

@property (nonatomic, strong) NSString *newsHeader;
@property (nonatomic, strong) NSString *newsDescription;
@property (nonatomic, strong) NSDate *publishDate;

@end

// This protocol enables typed collections. i.e.:
// RLMArray<Model>
RLM_ARRAY_TYPE(News)
