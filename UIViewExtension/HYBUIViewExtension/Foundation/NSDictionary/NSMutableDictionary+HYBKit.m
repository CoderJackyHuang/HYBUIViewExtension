//
//  NSMutableDictionary+HYBKit.m
//  HYBKitDemo
//
//  Created by 黄仪标 on 15/2/13.
//  Copyright (c) 2015年 xiaoyaor. All rights reserved.
//

#import "NSMutableDictionary+HYBKit.h"
#import "Common.h"

@implementation NSMutableDictionary (HYBKit)

- (void)setSafeObject:(id)anObject forKey:(id<NSCopying>)aKey {
  if (aKey == nil) {
    return;
  }
  
  if (anObject == nil) {
    return;
  }
  
  if ([anObject isKindOfClass:[NSString class]]) {
    NSString *obj = (NSString *)anObject;
    if (obj.length == 0) {
      return;
    }
  }
  
  [self setObject:anObject forKey:aKey];
}

- (void)setInt:(int)intValue forKey:(id<NSCopying>)aKey {
  [self setSafeObject:@(intValue) forKey:aKey];
}

- (void)setDouble:(double)doubleValue forKey:(id<NSCopying>)aKey {
  [self setSafeObject:@(doubleValue) forKey:aKey];
}

- (void)setFloat:(float)floatValue forKey:(id<NSCopying>)aKey {
  [self setSafeObject:@(floatValue) forKey:aKey];
}

@end
