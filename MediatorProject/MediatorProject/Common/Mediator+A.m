//
//  Mediator+A.m
//  MediatorProject
//
//  Created by hushunfeng on 2018/12/22.
//  Copyright © 2018 cmcc. All rights reserved.
//

#import "Mediator+A.h"

@implementation Mediator (A)

- (void)printInDFromA:(NSString *)bookId count:(NSInteger)bookCount price:(CGFloat)bookPrice {
//    Class classA = NSClassFromString(@"A");
//    id aInstance = [[classA alloc] init];
//    NSDictionary *params = @{@"bookId":bookId,@"bookCount":@(bookCount),@"bookPrice":@(bookPrice)};
//    [aInstance performSelector:NSSelectorFromString(@"printBook:") withObject:params];
    
    NSDictionary *params = @{@"bookId":bookId,@"bookCount":@(bookCount),@"bookPrice":@(bookPrice)};
    [self performTarget:@"A" action:@"printBook:" params:params];
}


@end
