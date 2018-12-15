//
//  main.m
//  ChainOfResponsibilityPattern
//
//  Created by hushunfeng on 2018/12/15.
//  Copyright © 2018 cmcc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Handler1.h"
#import "Handler2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Handler1 *handler1 = [[Handler1 alloc] init];
        Handler2 *handler2 = [[Handler2 alloc] init];
        
        //绑定责任链
        handler1.successor = handler2;
        handler2.successor = nil;//handler2作为责任链的尾端
        
        NSString *event1 = @"need handler1 handle";
        NSString *event2 = @"need handler2 handle";
        NSString *event3 = @"need handler3 handle";
        
        //handler1作为责任链的第一个handler
        [handler1 handleEvent:event1];
        [handler1 handleEvent:event2];
        [handler1 handleEvent:event3];
        
    }
    return 0;
}
