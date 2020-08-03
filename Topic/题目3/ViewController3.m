//
//  ViewController3.m
//  Topic
//
//  Created by xiekunpeng on 2020/7/6.
//  Copyright © 2020 xboker. All rights reserved.
//

#import "ViewController3.h"
#import "Model.h"
#import <objc/runtime.h>
#import <malloc/malloc.h>

@interface ViewController3 ()

@end


struct Person {
    int age;
    int height;
};

struct Man {
    struct Person person;
    int weight;
};

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testFirstparaAddress];
    [self instanceAddressIsSelfAddress];
    [self memoryMallocMode];
    
    NSString *testAge = @"TheAge";
    NSString *testName = @"TheName";
    id cls =  [Model class];
    void *clsPoint = &cls;
    [(__bridge id)clsPoint printAge];

    
    id metclass =  object_getClass([Model class]);
    void *metClassPoint = &metclass;
    [(__bridge id)metClassPoint printSuperClass];
}



- (void)memoryMallocMode {
    ///&str1 = 0x00007ffee71a6ed8
    NSString *str1 = @"abc";
    ///&str2 = 0x00007ffee71a6ed0
    NSString *str2 = @"111";
    ///&str3 = 0x00007ffee71a6ec8
    NSString *str3 = @"123asdf";
    ///&num1 = 0x00007ffee71a6ec4
    int num1 = 1;
    ///&num3 = 0x00007ffee71a6ec0
    int num2 = 2;
    ///num3Address = 0x00007ffee71a6ebc;
    int num3 = 3;
    void *num3Address = &num3;
}

///实例对象中self的地址就是这个实例对象的地址
- (void)instanceAddressIsSelfAddress {
    Model *model = [[Model alloc] init];
    NSLog(@"实例对象中self的地址就是这个实例对象的地址: %p", model);
    [model printSelfAddress];
}


///验证结构体的首个变量就是结构体的地址
- (void)testFirstparaAddress {
    struct Man man = {
        {30, 180},
        100
    };
    void *ageAddress = &(man.person.age);
    ///第一个元素的的地址就是结构体的地址   地址: 0x00007ffee44e4b80
    void *manAddress = &(man);
    ///地址:  0x00007ffee44e4b80
    void *firstParaAddress = &(man.person);
    ///拿到 man 结构体中第一个元素的地址+8就是 man.weight 的地址; firstParaAddress + 8 = 0x00007ffee44e4b88;
    void *weightAddress = firstParaAddress + 8;
    
    NSLog(@"结构体中第一个元素地址: %p",ageAddress );
    NSLog(@"结构体中第一个元素地址: %p",manAddress );
    NSLog(@"结构体中地址: %p",manAddress );
    NSLog(@"首地址+8 就是weight的地址: %p == %p", &(man.weight), weightAddress);
}



@end
