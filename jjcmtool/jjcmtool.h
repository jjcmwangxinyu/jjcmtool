//
//  Tool.h
//  链式语法524
//
//  Created by 王新宇 on 2017/5/24.
//  Copyright © 2017年 王新宇. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface jjcmtool : NSObject

@property (nonatomic, assign) NSInteger result;
//@property (nonatomic, copy) Tool *(^add)(NSInteger num);
//@property (nonatomic, copy) Tool *(^minus)(NSInteger num);
//@property (nonatomic, copy) Tool *(^multiply)(NSInteger num);
//@property (nonatomic, copy) Tool *(^divide)(NSInteger num);

- (jjcmtool *(^)(NSInteger num))add;
- (jjcmtool *(^)(NSInteger num))minus;
- (jjcmtool *(^)(NSInteger num))multiply;
- (jjcmtool *(^)(NSInteger num))divide;

@end
