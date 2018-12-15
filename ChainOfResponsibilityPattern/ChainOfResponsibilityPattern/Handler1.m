//
//  Handler1.m
//  ChainOfResponsibilityPattern
//
//  Created by hushunfeng on 2018/12/15.
//  Copyright © 2018 cmcc. All rights reserved.
//

#import "Handler1.h"

@implementation Handler1

- (void)handleEvent:(NSString *)event {
    //先判断是否能处理，能处理则处理，不能处理则交给下一个handler去处理
    if ([event containsString:@"handler1"]) {
        NSLog(@"handler1 handle");
    }
    else {
        if (self.successor) {//判断是否是最后一个处理者
            [self.successor handleEvent:event];
        }
        else {
            [super handleEvent:event];
        }
    }
}

@end
