//
//  UIWindow+HYBKit.m
//  HYBKitDemo
//
//  Created by 黄仪标 on 15/2/12.
//  Copyright (c) 2015年 xiaoyaor. All rights reserved.
//

#import "UIWindow+HYBKit.h"
#import "HYBDeviceDefine.h"

@implementation UIWindow (HYBKit)

- (UIImage *)takeScreenshot {
  BOOL ignoreOrientation = kIsIOS8OrLater;
  
  UIInterfaceOrientation orientation = [UIApplication sharedApplication].statusBarOrientation;
  
  CGSize imageSize = CGSizeZero;
  if (UIInterfaceOrientationIsPortrait(orientation) || ignoreOrientation) {
    imageSize = [UIScreen mainScreen].bounds.size;
  } else {
    imageSize = CGSizeMake([UIScreen mainScreen].bounds.size.height,
                           [UIScreen mainScreen].bounds.size.width);
  }
  
  UIGraphicsBeginImageContextWithOptions(imageSize, NO, 0);
  CGContextRef context = UIGraphicsGetCurrentContext();
  CGContextSaveGState(context);
  CGContextTranslateCTM(context, self.center.x, self.center.y);
  CGContextConcatCTM(context, self.transform);
  CGContextTranslateCTM(context, -self.bounds.size.width * self.layer.anchorPoint.x, -self.bounds.size.height * self.layer.anchorPoint.y);
  
  // Correct for the screen orientation
  if(!ignoreOrientation) {
    if(orientation == UIInterfaceOrientationLandscapeLeft) {
      CGContextRotateCTM(context, (CGFloat)M_PI_2);
      CGContextTranslateCTM(context, 0, -imageSize.width);
    } else if(orientation == UIInterfaceOrientationLandscapeRight) {
      CGContextRotateCTM(context, (CGFloat)-M_PI_2);
      CGContextTranslateCTM(context, -imageSize.height, 0);
    } else if(orientation == UIInterfaceOrientationPortraitUpsideDown) {
      CGContextRotateCTM(context, (CGFloat)M_PI);
      CGContextTranslateCTM(context, -imageSize.width, -imageSize.height);
    }
  }
  
  if([self respondsToSelector:@selector(drawViewHierarchyInRect:afterScreenUpdates:)]) {
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:NO];
  } else {
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
  }
  
  CGContextRestoreGState(context);
  UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  
  return image;
}

@end
