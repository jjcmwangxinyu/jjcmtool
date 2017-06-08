//
//  Tool.m
//  链式语法524
//
//  Created by 王新宇 on 2017/5/24.
//  Copyright © 2017年 王新宇. All rights reserved.
//

#import "jjcmtool.h"

@implementation jjcmtool

- (instancetype)init {
    self = [super init];
    self.result = 0;
    return self;
}

- (jjcmtool *(^)(NSInteger))add {
    return ^(NSInteger num) {
        self.result += num;
        return self;
    };
}

- (jjcmtool *(^)(NSInteger))minus {
    return ^(NSInteger num) {
        self.result-= num;
        return self;
    };
}

- (jjcmtool *(^)(NSInteger))multiply {
    return ^(NSInteger num) {
        self.result *= num;
        return self;
    };
}

- (jjcmtool *(^)(NSInteger))divide {
    return ^(NSInteger num) {
        NSAssert(num != 0, @"num不能为0！！！");
        self.result /= num;
        return self;
    };
}

@end
