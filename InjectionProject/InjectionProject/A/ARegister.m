//
//  ARegister.m
//  InjectionProject
//
//  Created by hushunfeng on 2018/12/18.
//  Copyright © 2018 cmcc. All rights reserved.
//

#import "ARegister.h"
#import "Context.h"
#import "A.h"
#import "ServiceProtocol.h"

@implementation ARegister

- (void)registerService {
    A *a = [[A alloc] init];
    [[Context sharedContext] registerService:@protocol(ServiceProtocol) implInstance:a];
}

@end
