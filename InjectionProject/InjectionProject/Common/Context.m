//
//  Context.m
//  InjectionProject
//
//  Created by hushunfeng on 2018/12/18.
//  Copyright © 2018 cmcc. All rights reserved.
//

#import "Context.h"

@interface Context()

{
    NSMutableDictionary *_serviceDict;
}

@end

@implementation Context

+ (instancetype)sharedContext
{
    static Context *context = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        context = [[self alloc] init];
    });
    return context;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _serviceDict = [NSMutableDictionary dictionary];
    }
    return self;
}

- (void)registerService:(Protocol *)protocol implInstance:(id)instance {
    if (![self findService:protocol]) {
        [_serviceDict setObject:instance forKey:NSStringFromProtocol(protocol)];
    }
}
- (id)findService:(Protocol *)protocol {
    return [_serviceDict objectForKey:NSStringFromProtocol(protocol)];
}


@end
