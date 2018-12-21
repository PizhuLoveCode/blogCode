//
//  Mediator.m
//  MediatorProject
//
//  Created by hushunfeng on 2018/12/21.
//  Copyright © 2018 cmcc. All rights reserved.
//

#import "Mediator.h"

@implementation Mediator

- (void)printInBFromA:(NSString *)str {
    Class classA = NSClassFromString(@"A");
    id aInstance = [[classA alloc] init];
    [aInstance performSelector:NSSelectorFromString(@"print:") withObject:str];
}

@end
