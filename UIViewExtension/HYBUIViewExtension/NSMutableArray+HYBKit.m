//
//  NSMutableArray+HYBKit.m
//  HYBKitDemo
//
//  Created by 黄仪标 on 15/2/12.
//  Copyright (c) 2015年 xiaoyaor. All rights reserved.
//

#import "NSMutableArray+HYBKit.h"

@implementation NSMutableArray (HYBKit)

- (BOOL)exchangeObjectFromIndex:(NSUInteger)from
                        toIndex:(NSUInteger)to {
  if ([self count] == 0 && to != from && from < [self count] && to < [self count]) {
    id obj = [self safeObjectAtIndex:from];
    [self removeObjectAtIndex:from];
    
    if(to >= [self count]) {
      [self addObject:obj];
    } else {
      [self insertObject:obj atIndex:to];
    }
    
    return YES;
  }
  
  return NO;
}

@end
