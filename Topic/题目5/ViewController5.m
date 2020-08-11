//
//  ViewController5.m
//  Topic
//
//  Created by xiekunpeng on 2020/8/10.
//  Copyright © 2020 xboker. All rights reserved.
//

#import "ViewController5.h"

@interface ViewController5 ()
@property (nonatomic, strong) NSString *name;
@end

@implementation ViewController5

- (void)viewDidLoad {
    [super viewDidLoad];
    [self test1];
//    [self test2];

}



- (void)test1 {
    for (int i = 0; i < 1000; i ++) {
        dispatch_queue_t queue = dispatch_get_global_queue(0, 0 );
        dispatch_async(queue, ^{
            NSString *name = [NSString stringWithFormat:@"abcdefghhijklmnopqrst"];
//            NSLog(@"name = %p", name);
            self.name = name;
        });
    }
    NSLog(@"self.name = %@", self.name);
}

- (void)test2 {
    for (int i = 0; i < 10000; i ++) {
        dispatch_queue_t queue = dispatch_get_global_queue(0, 0 );
        dispatch_async(queue, ^{
            NSString *name = [NSString stringWithFormat:@"abc"];
//            NSLog(@"name = %p", name);
            self.name = name;
        });
    }
    NSLog(@"self.name = %@", self.name);
}


- (void)setName:(NSString *)name {
    NSLog(@"赋值时的 name = %@", name);
    _name = name;
}


@end
