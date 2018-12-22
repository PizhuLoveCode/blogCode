//
//  Mediator.h
//  MediatorProject
//
//  Created by hushunfeng on 2018/12/21.
//  Copyright © 2018 cmcc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Mediator : NSObject

- (void)printInBFromA:(NSString *)str;

//如果有3个参数
- (void)printInCFromA:(NSString *)name age:(NSInteger)age height:(CGFloat)height;


- (void)performTarget:(NSString *)targetName action:(NSString *)actionName params:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
