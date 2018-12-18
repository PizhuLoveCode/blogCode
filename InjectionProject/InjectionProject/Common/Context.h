//
//  Context.h
//  InjectionProject
//
//  Created by hushunfeng on 2018/12/18.
//  Copyright © 2018 cmcc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Context : NSObject

+ (instancetype)sharedContext;

- (void)registerService:(Protocol *)protocol implInstance:(id)instance;
- (id)findService:(Protocol *)protocol;

@end

NS_ASSUME_NONNULL_END
