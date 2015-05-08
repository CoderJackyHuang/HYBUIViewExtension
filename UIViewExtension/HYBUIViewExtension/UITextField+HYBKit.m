//
//  UITextField+HYBKit.m
//  HYBKitDemo
//
//  Created by 黄仪标 on 15/2/12.
//  Copyright (c) 2015年 xiaoyaor. All rights reserved.
//

#import "UITextField+HYBKit.h"

@implementation UITextField (HYBKit)

- (void)setPlaceholderColor:(UIColor *)placeholderColor {
  [self setValue:placeholderColor forKeyPath:@"_placeholderLabel.textColor"];
}

- (void)setPlaceholderFont:(UIFont *)placeholderFont {
  [self setValue:placeholderFont forKeyPath:@"_placeholderLabel.font"];
}

@end
