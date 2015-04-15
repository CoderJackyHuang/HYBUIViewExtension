//
//  UIView+HYBExtension.m
//  UIViewExtension
//
//  Created by huangyibiao on 15/4/15.
//  Copyright (c) 2015年 huangyibiao. All rights reserved.
//

#import "UIView+HYBExtension.h"

@implementation UIView (HYBExtension)

- (CGFloat)originX {
  return self.frame.origin.x;
}

- (void)setOriginX:(CGFloat)originX {
  CGRect frame = self.frame;
  frame.origin.x = originX;
  self.frame = frame;
  return;
}

- (CGFloat)originY {
  return self.frame.origin.y;
}

- (void)setOriginY:(CGFloat)originY {
  CGRect frame = self.frame;
  frame.origin.y = originY;
  self.frame = frame;
  return;
}

- (CGFloat)rightX {
  return [self originX] + [self width];
}

- (void)setRightX:(CGFloat)rightX {
  CGRect frame = self.frame;
  frame.origin.x = rightX - [self width];
  self.frame = frame;
  return;
}

- (CGFloat)bottomY {
  return [self originY] + [self height];
}

- (void)setBottomY:(CGFloat)bottomY {
  CGRect frame = self.frame;
  frame.origin.y = bottomY - [self height];
  self.frame = frame;
  return;
}

- (CGFloat)centerX {
  return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX {
  self.center = CGPointMake(centerX, self.center.y);
  return;
}

- (CGFloat)centerY {
  return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY {
  self.center = CGPointMake(self.center.x, centerY);
  return;
}

- (CGFloat)width {
  return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
  CGRect frame = self.frame;
  frame.size.width = width;
  self.frame = frame;
  return;
}

- (CGFloat)height {
  return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
  CGRect frame = self.frame;
  frame.size.height = height;
  self.frame = frame;
  return;
}

- (CGPoint)origin {
  return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin {
  CGRect frame = self.frame;
  frame.origin = origin;
  self.frame = frame;
  return;
}

- (CGSize)size {
  return self.frame.size;
}

- (void)setSize:(CGSize)size {
  CGRect frame = self.frame;
  frame.size = size;
  self.frame = frame;
  return;
}

- (CGSize)twiceSize {
  return CGSizeMake(self.width * 2, self.height * 2);
}

- (CGSize)thirdSize {
  return CGSizeMake(self.width * 3, self.height * 3);
}

- (void)removeAllSubviews {
  for (UIView *view in self.subviews) {
    [view removeFromSuperview];
  }
}

- (UIImage *)captureScreenshot {
  UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, [UIScreen mainScreen].scale);
  
  // after ios 7
  if ([self respondsToSelector:@selector(drawViewHierarchyInRect:afterScreenUpdates:)]) {
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:
                                [self methodSignatureForSelector:
                                 @selector(drawViewHierarchyInRect:afterScreenUpdates:)]];
    [invocation setTarget:self];
    [invocation setSelector:@selector(drawViewHierarchyInRect:afterScreenUpdates:)];
    CGRect arg2 = self.bounds;
    BOOL arg3 = YES;
    [invocation setArgument:&arg2 atIndex:2];
    [invocation setArgument:&arg3 atIndex:3];
    [invocation invoke];
  } else { // before ios 7
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
  }
  
  UIImage *screenshot = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return screenshot;
}

- (NSString *)className {
  return NSStringFromClass([self class]);
}

+ (NSString *)className {
  return NSStringFromClass([self class]);
}

- (CGFloat)cornerRadius {
  return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
  self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)borderColor {
  return [[UIColor alloc] initWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor {
  self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth {
  return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth {
  self.layer.borderWidth = borderWidth;
}

- (UIColor *)shaddowColor {
  return [[UIColor alloc] initWithCGColor:self.layer.shadowColor];
}

- (void)setShaddowColor:(UIColor *)shaddowColor {
  self.layer.shadowColor = shaddowColor.CGColor;
}

@end
