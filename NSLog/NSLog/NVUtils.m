//
//  NVUtils.m
//  NSLog
//
//  Created by joyceshen on 8/15/16.
//  Copyright © 2016 joyceshen. All rights reserved.
//

#import "NVUtils.h"

@implementation NVUtils
NSString *null2empty(NSString *str)
{
    if (str == nil) {
        NSLog(@"convert nil to empty str");
        return @"";
    } else {
        return str;
    }
}
@end
