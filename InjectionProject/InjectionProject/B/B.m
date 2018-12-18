//
//  B.m
//  InjectionProject
//
//  Created by hushunfeng on 2018/12/18.
//  Copyright © 2018 cmcc. All rights reserved.
//

#import "B.h"
#import "Context.h"
#import "ServiceProtocol.h"

@implementation B

- (void)wantPrint {
    
    id<ServiceProtocol> impl = [[Context sharedContext] findService:@protocol(ServiceProtocol)];
    [impl print];
}

@end
