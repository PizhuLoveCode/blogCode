//
//  A.m
//  InjectionProject
//
//  Created by hushunfeng on 2018/12/18.
//  Copyright © 2018 cmcc. All rights reserved.
//

#import "A.h"
#import "ServiceProtocol.h"

@interface A()<ServiceProtocol>

@end

@implementation A

- (void)print {
    NSLog(@"------> A print");
}

@end
