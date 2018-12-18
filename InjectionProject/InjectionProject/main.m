//
//  main.m
//  InjectionProject
//
//  Created by hushunfeng on 2018/12/18.
//  Copyright © 2018 cmcc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ARegister.h"
#import "B.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ARegister *aRegister = [[ARegister alloc] init];
        [aRegister registerService];
        B *b = [[B alloc] init];
        [b wantPrint];
    }
    return 0;
}
