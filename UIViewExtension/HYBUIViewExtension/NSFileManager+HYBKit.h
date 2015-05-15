//
//  NSFileManager+HYBKit.h
//  HYBKitDemo
//
//  Created by 黄仪标 on 15/2/12.
//  Copyright (c) 2015年 xiaoyaor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (HYBKit)

/*!
 * @brief 判断文件是否存在
 *
 * @param filePath 文件路径名
 * @return 返回YES表示存在，返回NO表示不存在
 */
- (BOOL)isFileExists:(NSString *)filePath;

/*!
 * @brief 判断文件是否超时
 *
 * @param filePath 文件路径名
 * @param timeout 限制的超时时间，单位为秒
 * @return 返回YES表示超时，返回NO表示未超时
 */
- (BOOL)isFile:(NSString *)filePath timeout:(NSTimeInterval)timeout;

/*!
 * @brief 根据路径获取文件的大小
 *
 * @param filePath 文件路径名
 * @return 文件的大小
 */
- (long)fileSizeWithPath:(NSString *)path;

@end
