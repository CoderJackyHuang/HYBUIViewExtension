//
//  UIImagePickerController+HYBExtension.m
//  HYBUIImagePickerControllerExtension
//
//  Created by huangyibiao on 15/4/16.
//  Copyright (c) 2015年 huangyibiao. All rights reserved.
//

#import "UIImagePickerController+HYBExtension.h"
#import <AssetsLibrary/AssetsLibrary.h>
#import <MobileCoreServices/MobileCoreServices.h>

@implementation UIImagePickerController (HYBExtension)

/*!
 * @brief 判断是否有后置摄像头
 * @return YES表示有后置摄像头，否则表示没有有后置摄像头
 */
+ (BOOL)isCameraAvailable {
  return [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera];
}

/*!
 * @brief 判断是否有前置摄像头
 * @return YES表示有前置摄像头，否则表示没有有前置摄像头
 */
+ (BOOL)isFrontCameraAvailable {
  return [UIImagePickerController isCameraDeviceAvailable:UIImagePickerControllerCameraDeviceFront];
}

/*!
 * @brief 判断是否支持拍照功能
 * @return YES表示支持拍照功能，否则表示不支持拍照功能
 */
+ (BOOL)canTakePhoto {
  return [self isCameraSupportMedia:(__bridge NSString *)kUTTypeImage
                         sourceType:UIImagePickerControllerSourceTypeCamera];
}

/*!
 * @brief 判断是否允许使用相册
 * @return YES表示允许使用相册，否则表示不允许使用相册
 */
+ (BOOL)isPhotoLibraryAvailable {
  return [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary];
}

/*!
 * @brief 判断是否允许用户从相册中选择图片
 * @return YES表示允许用户从相册中选择图片，否则表示不允许用户从相册中选择图片
 */
+ (BOOL)canPickPhotosFromPhotoLibrary {
  return [self isCameraSupportMedia:(__bridge NSString *)kUTTypeImage
                         sourceType:UIImagePickerControllerSourceTypePhotoLibrary];
}

/*!
 * @brief 判断是否允许用户从相册中选择音频/视频
 * @return YES表示允许用户从相册中选择音频/视频，否则表示不允许用户从相册中选择音频/视频
 */
+ (BOOL)canPickVideosFromPhotoLibrary {
  return [self isCameraSupportMedia:(__bridge NSString *)kUTTypeMovie
                         sourceType:UIImagePickerControllerSourceTypePhotoLibrary];
}

#pragma mark - Private Methods
+ (BOOL)isCameraSupportMedia:(NSString *)mediaType sourceType:(UIImagePickerControllerSourceType)sourceType {
  __block BOOL result = NO;
  if ([mediaType length] == 0) {
    return NO;
  }
  NSArray *availableMediaTypes = [UIImagePickerController availableMediaTypesForSourceType:sourceType];
  [availableMediaTypes enumerateObjectsUsingBlock: ^(id obj, NSUInteger idx, BOOL *stop) {
    NSString *mediaType = (NSString *)obj;
    if ([mediaType isEqualToString:mediaType]){
      result = YES;
      *stop = YES;
    }
  }];
  return result;
}

@end
