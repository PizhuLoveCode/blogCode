//
//  B.m
//  MediatorProject
//
//  Created by hushunfeng on 2018/12/21.
//  Copyright © 2018 cmcc. All rights reserved.
//

#import "B.h"
#import "Mediator.h"

@implementation B

- (void)print {
    Mediator *mediator = [[Mediator alloc] init];
    [mediator printInBFromA:@"hello"];
}

- (void)say:(NSString *)name age:(NSInteger)age {
    NSLog(@"-----> name:%@,age:%ld",name,age);
}

@end
