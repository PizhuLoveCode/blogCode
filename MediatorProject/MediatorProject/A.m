//
//  A.m
//  MediatorProject
//
//  Created by hushunfeng on 2018/12/21.
//  Copyright © 2018 cmcc. All rights reserved.
//

#import "A.h"

@implementation A

- (void)print:(NSString *)str {
    NSLog(@"------> %@",str);
}

- (void)printInfo:(NSDictionary *)params {
    NSLog(@"-----> 开始解析params:%@",params);
}

@end
