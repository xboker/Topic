//
//  Model.h
//  Topic
//
//  Created by xiekunpeng on 2020/7/6.
//  Copyright © 2020 xboker. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Model : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *age;

- (void)printName;
- (void)printAge;


- (void)printSelfAddress;

+ (void)printSuperClass;
@end

NS_ASSUME_NONNULL_END
