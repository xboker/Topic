//
//  ViewController2.m
//  Topic
//
//  Created by xiekunpeng on 2020/7/6.
//  Copyright © 2020 xboker. All rights reserved.
//

#import "ViewController2.h"
#import "Dog.h"
#import "Doggy.h"
#import <objc/runtime.h>

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    Doggy *doggy = [[Doggy alloc] init];
    Dog *dog = [[Dog alloc] init];
    BOOL case1 = [doggy isKindOfClass:[Dog class]];
    BOOL case2 = [doggy isMemberOfClass:[Dog class]];
    
    BOOL case3 = [dog isKindOfClass:[NSObject class]];
    BOOL case4 = [dog isMemberOfClass:[NSObject class]];
    
    
    BOOL case5 = [[Doggy class] isMemberOfClass:object_getClass([Dog class])];
    BOOL case6 = [[Doggy class] isKindOfClass:object_getClass([Dog class])];

    NSLog(@"case1 = %d, case2 = %d, case3 = %d, case4 = %d, case5 = %d, case6 = %d", case1, case2, case3, case4, case5, case6);
    
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
