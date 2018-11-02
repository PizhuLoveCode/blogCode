//
//  ViewController.m
//  SemaphoreTest
//
//  Created by hushunfeng on 2018/11/2.
//  Copyright © 2018 cmcc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) dispatch_semaphore_t semaphore;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(300, 300, 50, 50);
    [btn addTarget:self action:@selector(startPrintBySemaphore) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:btn];
    
    self.semaphore = dispatch_semaphore_create(1);
    
}


- (void)startPrintBySemaphore {
    
    dispatch_semaphore_wait(self.semaphore, DISPATCH_TIME_FOREVER);
    __block NSString *print1Info = nil;
    [self print1WithCompletion:^(NSString *previousPrint) {
        dispatch_semaphore_signal(self.semaphore);
        print1Info = previousPrint;
    }];
    
    dispatch_semaphore_wait(self.semaphore, DISPATCH_TIME_FOREVER);
    __block NSString *print2Info = nil;
    [self print2WithPrint1Info:print1Info completion:^(NSString *previousPrint) {
        dispatch_semaphore_signal(self.semaphore);
        print2Info = previousPrint;
    }];
    
    dispatch_semaphore_wait(self.semaphore, DISPATCH_TIME_FOREVER);
    [self print3WithPrint2Info:print2Info completion:^{
        dispatch_semaphore_signal(self.semaphore);
    }];
 
}

- (void)print1WithCompletion:(void(^)(NSString *previousPrint))completion {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSString *log = @"------> print 1";
        completion(log);
    });
}
- (void)print2WithPrint1Info:(NSString *)print1Info completion:(void(^)(NSString *previousPrint))completion {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSString *log = [NSString stringWithFormat:@"%@------> print 2",print1Info];
        completion(log);
    });
}
- (void)print3WithPrint2Info:(NSString *)print2Info completion:(void(^)(void))completion {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSString *log = [NSString stringWithFormat:@"%@------> print 3",print2Info];
        NSLog(@"%@",log);
        completion();
    });
}



@end
