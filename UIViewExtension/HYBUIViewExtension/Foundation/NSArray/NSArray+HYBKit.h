//
//  NSArray+HYBKit.h
//  HYBKitDemo
//
//  Created by 黄仪标 on 15/2/12.
//  Copyright (c) 2015年 xiaoyaor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (HYBKit)

/**
 *  如果index索引值下有元素，返回该元素，否则返回nil
 *
 *  @param index 索引
 *  @return 获取到的元素或者nil
 */
- (id)safeObjectAtIndex:(NSUInteger)index;

/**
 *  返回逆序排序的数组
 *
 *  @return 逆序排序的数组
 */
- (NSArray *)reversedArray;
+ (NSArray *)reversedArray:(NSArray *)array;

/**
 *  将数组转换成JSON字符串
 *
 *  @return JSON字符串或者nil（转换失败）
 */
- (NSString *)toJson;
+ (NSString *)toJson:(NSArray *)array;

/**
 * 判断数组中是否包含string
 *
 * @param string 待判断的字符串
 *
 * @return YES表示包含，NO表示不包含
 */
- (BOOL)isContainsString:(NSString *)string;

@end
