//
//  UIScrollView+HYBKit.m
//  HYBKitDemo
//
//  Created by 黄仪标 on 15/2/14.
//  Copyright (c) 2015年 xiaoyaor. All rights reserved.
//

#import "UIScrollView+HYBKit.h"

@implementation UIScrollView (HYBKit)

- (instancetype)initWithFrame:(CGRect)frame {
  return [self initWithFrame:frame contentSize:CGSizeMake(frame.size.width, frame.size.height)];
}

- (instancetype)initWithFrame:(CGRect)frame contentSize:(CGSize)size {
  if (self = [super initWithFrame:frame]) {
    self.pagingEnabled = YES;
    self.showsHorizontalScrollIndicator = NO;
    self.showsVerticalScrollIndicator = YES;
    self.bouncesZoom = YES;
    self.bounces = YES;
    self.contentSize = size;
  }
  return self;
}

@end
