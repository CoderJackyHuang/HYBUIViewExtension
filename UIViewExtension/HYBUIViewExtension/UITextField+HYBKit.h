//
//  UITextField+HYBKit.h
//  HYBKitDemo
//
//  Created by 黄仪标 on 15/2/12.
//  Copyright (c) 2015年 xiaoyaor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (HYBKit)

/**
 * 设置占位符的文字颜色
 *
 * @param placeholderColor 新颜色
 */
- (void)setPlaceholderColor:(UIColor *)placeholderColor;

/**
 * 设置占位符的文字字体
 *
 * @param placeholderFont 新字体
 */
- (void)setPlaceholderFont:(UIFont *)placeholderFont;

@end
