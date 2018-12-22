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

- (void)printInCFromA:(NSString *)name age:(NSInteger)age height:(CGFloat)height {
    Class classA = NSClassFromString(@"A");
    id aInstance = [[classA alloc] init];
    NSDictionary *params = @{@"name":name,@"age":@(age),@"height":@(height)};
    [aInstance performSelector:NSSelectorFromString(@"printInfo:") withObject:params];

}

- (void)performTarget:(NSString *)targetName action:(NSString *)actionName params:(NSDictionary *)params {
    Class target = NSClassFromString(targetName);
    id targetInstance = [[target alloc] init];
    [targetInstance performSelector:NSSelectorFromString(actionName) withObject:params];
}

@end
