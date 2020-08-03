//
//  UIControl+Extention.m
//  Topic
//
//  Created by xiekunpeng on 2020/7/13.
//  Copyright © 2020 xboker. All rights reserved.
//

#import "UIControl+Extention.h"
#import <objc/runtime.h>


@implementation UIControl (Extention)

+ (void)load {
    Method method1 = class_getInstanceMethod(self, @selector(sendAction:to:forEvent:));
    Method method2 = class_getInstanceMethod(self, @selector(x_sendAction:to:forEvent:));
    method_exchangeImplementations(method1, method2);
}



- (void)x_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
    ///如果是 UIButton则处理下
    if ([self isKindOfClass:[UIButton class]]) {
        NSLog(@"UIButton 点击着的信息action: %@__target: %@__event: %@", NSStringFromSelector(action), target, event);
        [self x_sendAction:action to:target forEvent:event];
    }
}


@end
