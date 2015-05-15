//
//  NSMutableArray+HYBKit.h
//  HYBKitDemo
//
//  Created by 黄仪标 on 15/2/12.
//  Copyright (c) 2015年 xiaoyaor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+HYBKit.h"

@interface NSMutableArray (HYBKit)

/**
 *  将两个元素互换位置
 *
 *  @param from The index to move from
 *  @param to   The index to move to
 * @return YES，表示移动成功，NO表示移动失败
 */
- (BOOL)exchangeObjectFromIndex:(NSUInteger)from
                    toIndex:(NSUInteger)to;

@end
