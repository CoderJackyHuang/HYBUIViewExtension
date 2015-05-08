//
//  UIColor+HYBExtension.h
//  HYBUIColorExtension
//
//  Created by huangyibiao on 15/4/15.
//  Copyright (c) 2015年 huangyibiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (HYBExtension)

@property (nonatomic, readonly) CGColorSpaceModel colorSpaceModel;
@property (nonatomic, readonly) BOOL canProvideRGBComponents;
@property (nonatomic, readonly) CGFloat red;
@property (nonatomic, readonly) CGFloat green;
@property (nonatomic, readonly) CGFloat blue;
@property (nonatomic, readonly) CGFloat white;
@property (nonatomic, readonly) CGFloat alpha;

+ (UIImage *)imageWithColor:(UIColor *)color;
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;

/**
 *  Create a random color
 *
 *  @return Return the UIColor instance
 */
+ (UIColor *)randomColor;

/**
 *  Create a color from a given color with alpha
 *
 *  @param color UIColor value
 *  @param alpha Alpha value
 *
 *  @return Return the UIColor instance
 */
+ (UIColor *)colorWithColor:(UIColor *)color
                      alpha:(float)alpha;

/**
 *  Create a color from a HEX string
 *
 *  @param hexString HEX string
 *
 *  @return Return the UIColor instance
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString;
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert andAlpha:(CGFloat)alpha;

/**
 *  Create a color from HEX
 *
 *  @param hex HEX value
 *
 *  @return Return the UIColor instance
 */
+ (UIColor *)colorWithHex:(unsigned int)hex;

/**
 *  Create a color from HEX with alpha
 *
 *  @param hex   HEX value
 *  @param alpha Alpha value
 *
 *  @return Return the UIColor instance
 */
+ (UIColor *)colorWithHex:(unsigned int)hex
                    alpha:(float)alpha;


@end
