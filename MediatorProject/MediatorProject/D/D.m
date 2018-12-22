//
//  D.m
//  MediatorProject
//
//  Created by hushunfeng on 2018/12/22.
//  Copyright © 2018 cmcc. All rights reserved.
//

#import "D.h"
#import "Mediator+A.h"

@implementation D

- (void)printBook {
    Mediator *mediator = [[Mediator alloc] init];
    [mediator printInDFromA:@"book1" count:10 price:23.f];
}

@end
