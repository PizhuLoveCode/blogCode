//
//  BasicHandler.h
//  ChainOfResponsibilityPattern
//
//  Created by hushunfeng on 2018/12/15.
//  Copyright © 2018 cmcc. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface BasicHandler : NSObject

@property (nonatomic, strong) BasicHandler *successor;//继承者

- (void)handleEvent:(NSString *)event;

@end

