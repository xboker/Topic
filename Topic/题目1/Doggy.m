//
//  Doggy.m
//  Topic
//
//  Created by xiekunpeng on 2020/7/6.
//  Copyright © 2020 xboker. All rights reserved.
//

#import "Doggy.h"

@implementation Doggy

- (instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"%@", [self class]);
        NSLog(@"%@", [super class]);
 
    }
    return  self;
}

 
- (void)eatSomething {
    [super eatSomething];
    NSLog(@"Doggy like Bones Too");
}

@end
