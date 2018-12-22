//
//  main.m
//  MediatorProject
//
//  Created by hushunfeng on 2018/12/21.
//  Copyright © 2018 cmcc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "B.h"
#import "C.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        B *b = [[B alloc] init];
        [b print];
        
        C *c = [[C alloc] init];
        [c printInfo];
    }
    return 0;
}
