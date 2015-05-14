//
//  NSMutableDictionary+HYBKit.h
//  HYBKitDemo
//
//  Created by 黄仪标 on 15/2/13.
//  Copyright (c) 2015年 xiaoyaor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+HYBKit.h"

@interface NSMutableDictionary (HYBKit)

/**
 * 调用此方法来防止无效值时崩溃的问题
 */
- (void)setSafeObject:(id)anObject forKey:(id<NSCopying>)aKey;
- (void)setInt:(int)intValue forKey:(id<NSCopying>)aKey;
- (void)setDouble:(double)doubleValue forKey:(id<NSCopying>)aKey;
- (void)setFloat:(float)floatValue forKey:(id<NSCopying>)aKey;

@end
