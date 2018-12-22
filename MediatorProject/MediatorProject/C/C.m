//
//  C.m
//  MediatorProject
//
//  Created by hushunfeng on 2018/12/21.
//  Copyright © 2018 cmcc. All rights reserved.
//

#import "C.h"
#import "Mediator.h"

@implementation C

- (void)printInfo {
    Mediator *mediator = [[Mediator alloc] init];
    [mediator printInCFromA:@"nick" age:10 height:23.7];
}


@end
