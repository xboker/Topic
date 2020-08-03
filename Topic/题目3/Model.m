//
//  Model.m
//  Topic
//
//  Created by xiekunpeng on 2020/7/6.
//  Copyright © 2020 xboker. All rights reserved.
//

#import "Model.h"

@implementation Model

- (void)printName {
    
    NSLog(@"name is : %@", self.name);
}

- (void)printAge {
    NSLog(@"age is : %@", self.age);
}


- (void)printSelfAddress {
    NSLog(@"实例对象中self的地址就是这个实例对象的地址: %p", self);
}


+ (void)printSuperClass {
    NSLog(@"superclass is : %@", [self superclass]);

}


@end
