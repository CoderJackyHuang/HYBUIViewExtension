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

- (UILabel *)labelWithTag:(NSInteger)tag {
  UIView *view = [self viewWithTag:tag];
  if ([view isKindOfClass:[UILabel class]]) {
    return (UILabel *)view;
  }
  
  return nil;
}

- (UIButton *)buttonWithTag:(NSInteger)tag {
  UIView *view = [self viewWithTag:tag];
  if ([view isKindOfClass:[UIButton class]]) {
    return (UIButton *)view;
  }
  
  return nil;
}

- (UITextField *)textFieldWithTag:(NSInteger)tag {
  UIView *view = [self viewWithTag:tag];
  if ([view isKindOfClass:[UITextField class]]) {
    return (UITextField *)view;
  }
  
  return nil;
}

- (UITextView *)textViewWithTag:(NSInteger)tag {
  UIView *view = [self viewWithTag:tag];
  if ([view isKindOfClass:[UITextView class]]) {
    return (UITextView *)view;
  }
  
  return nil;
}

- (UIScrollView *)scrollViewWithTag:(NSInteger)tag {
  UIView *view = [self viewWithTag:tag];
  if ([view isKindOfClass:[UIScrollView class]]) {
    return (UIScrollView *)view;
  }
  
  return nil;
}

- (UITableView *)tableViewWithTag:(NSInteger)tag {
  UIView *view = [self viewWithTag:tag];
  if ([view isKindOfClass:[UITableView class]]) {
    return (UITableView *)view;
  }
  
  return nil;
}

- (UITableViewCell *)tableCellWithTag:(NSInteger)tag {
  UIView *view = [self viewWithTag:tag];
  if ([view isKindOfClass:[UITableViewCell class]]) {
    return (UITableViewCell *)view;
  }
  
  return nil;
}

- (UIWindow *)windowWithTag:(NSInteger)tag {
  UIView *view = [self viewWithTag:tag];
  if ([view isKindOfClass:[UIWindow class]]) {
    return (UIWindow *)view;
  }
  
  return nil;
}

- (UITabBar *)tabbarWithTag:(NSInteger)tag {
  UIView *view = [self viewWithTag:tag];
  if ([view isKindOfClass:[UITabBar class]]) {
    return (UITabBar *)view;
  }
  
  return nil;
}

- (UITabBarItem *)tabbarItemWithTag:(NSInteger)tag {
  UIView *view = [self viewWithTag:tag];
  if ([view isKindOfClass:[UITabBarItem class]]) {
    return (UITabBarItem *)view;
  }
  
  return nil;
}

- (UISwitch *)switchWithTag:(NSInteger)tag {
  UIView *view = [self viewWithTag:tag];
  if ([view isKindOfClass:[UISwitch class]]) {
    return (UISwitch *)view;
  }
  
  return nil;
}

- (UIStepper *)stepperWithTag:(NSInteger)tag {
  UIView *view = [self viewWithTag:tag];
  if ([view isKindOfClass:[UIStepper class]]) {
    return (UIStepper *)view;
  }
  
  return nil;
}

- (UISlider *)sliderWithTag:(NSInteger)tag {
  UIView *view = [self viewWithTag:tag];
  if ([view isKindOfClass:[UISlider class]]) {
    return (UISlider *)view;
  }
  
  return nil;
}

- (UISegmentedControl *)segmentWithTag:(NSInteger)tag {
  UIView *view = [self viewWithTag:tag];
  if ([view isKindOfClass:[UISegmentedControl class]]) {
    return (UISegmentedControl *)view;
  }
  
  return nil;
}

- (UITableViewHeaderFooterView *)tableHeaderFooterWithTag:(NSInteger)tag {
  UIView *view = [self viewWithTag:tag];
  if ([view isKindOfClass:[UITableViewHeaderFooterView class]]) {
    return (UITableViewHeaderFooterView *)view;
  }
  
  return nil;
}

- (UIToolbar *)toolbarWithTag:(NSInteger)tag {
  UIView *view = [self viewWithTag:tag];
  if ([view isKindOfClass:[UIToolbar class]]) {
    return (UIToolbar *)view;
  }
  
  return nil;
}

- (UIWebView *)webViewWithTag:(NSInteger)tag {
  UIView *view = [self viewWithTag:tag];
  if ([view isKindOfClass:[UIWebView class]]) {
    return (UIWebView *)view;
  }
  
  return nil;
}

- (UICollectionView *)collectionViewWithTag:(NSInteger)tag {
  UIView *view = [self viewWithTag:tag];
  if ([view isKindOfClass:[UICollectionView class]]) {
    return (UICollectionView *)view;
  }
  
  return nil;
}

- (UICollectionViewCell *)collectionCellWithTag:(NSInteger)tag {
  UIView *view = [self viewWithTag:tag];
  if ([view isKindOfClass:[UICollectionViewCell class]]) {
    return (UICollectionViewCell *)view;
  }
  
  return nil;
}

- (instancetype)initWithOriginX:(CGFloat)originX
                        originY:(CGFloat)originY
                          width:(CGFloat)width
                         height:(CGFloat)height {
  return [self initWithFrame:CGRectMake(originX, originY, width, height)];
}

+ (instancetype)viewWithOriginX:(CGFloat)originX
                        originY:(CGFloat)originY
                          width:(CGFloat)width
                         height:(CGFloat)height {
  UIView *view = [[UIView alloc] initWithOriginX:originX
                                         originY:originY
                                           width:width
                                          height:height];
  return view;
}

+ (instancetype)viewWithFrame:(CGRect)frame {
  return [self viewWithOriginX:frame.origin.x
                       originY:frame.origin.y
                         width:frame.size.width
                        height:frame.size.height];
}

@end
