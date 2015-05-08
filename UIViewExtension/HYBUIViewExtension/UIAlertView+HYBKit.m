//
//  UIAlertView+HYBKit.m
//  HYBKitDemo
//
//  Created by 黄仪标 on 15/2/12.
//  Copyright (c) 2015年 xiaoyaor. All rights reserved.
//

#import "UIAlertView+HYBKit.h"
#import "Common.h"

#define kOkButtonDefaultTitle     @"确定"
#define kCancelButtonDefaultTitle @"取消"

@implementation UIAlertView (HYBKit)

+ (UIAlertView *)showWithMessage:(NSString *)message {
  return [self showWithTitle:nil message:message];
}

+ (UIAlertView *)showWithTitle:(NSString *)title message:(NSString *)message {
  return [self showWithTitle:title message:message delegate:nil];
}

+ (UIAlertView *)showWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate {
  return [self showWithTitle:title
                     message:message
                    okButton:kOkButtonDefaultTitle
                cancelButton:kCancelButtonDefaultTitle];
}

+ (UIAlertView *)showWithTitle:(NSString *)title
                       message:(NSString *)message
                      okButton:(NSString *)okButtonTitle
                  cancelButton:(NSString *)cancelButtonTitle {
  return [self showWithTitle:title
                     message:message
                    delegate:nil
                    okButton:okButtonTitle
                cancelButton:cancelButtonTitle];
}

+ (UIAlertView *)showWithTitle:(NSString *)title
                       message:(NSString *)message
                      delegate:(id)delegate
                      okButton:(NSString *)okButtonTitle
                  cancelButton:(NSString *)cancelButtonTitle {
  __block UIAlertView *alertView = nil;
  
  dispatch_async(kGlobalThread, ^{
    alertView =  [[UIAlertView alloc] initWithTitle:title
                                            message:message
                                           delegate:delegate
                                  cancelButtonTitle:cancelButtonTitle
                                  otherButtonTitles:okButtonTitle, nil];
    dispatch_async(kMainThread, ^{
      [alertView show];
    });
  });
  return alertView;
}

@end
