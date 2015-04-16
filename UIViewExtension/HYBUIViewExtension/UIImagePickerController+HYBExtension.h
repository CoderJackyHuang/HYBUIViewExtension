//
//  UIImagePickerController+HYBExtension.h
//  HYBUIImagePickerControllerExtension
//
//  Created by huangyibiao on 15/4/16.
//  Copyright (c) 2015年 huangyibiao. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  This is an really useful UIImagePickerController category.
 *
 *  @author huangyibiao
 *  @email  huangyibiao520@163.com
 *  @github https://github.com/632840804
 *  @blog   http://blog.csdn.net/woaifen3344
 *
 *  @note Make friends with me.
 *        Facebook: huangyibiao520@163.com (Jacky Huang)
 *        QQ:(632840804)
 *        Weixin:(huangyibiao520)
 *        Please tell me your real name when you send message to me.3Q.
 */
@interface UIImagePickerController (HYBExtension)


/*!
 * @brief 判断是否有后置摄像头
 * @return YES表示有后置摄像头，否则表示没有有后置摄像头
 */
+ (BOOL)isCameraAvailable;

/*!
 * @brief 判断是否有前置摄像头
 * @return YES表示有前置摄像头，否则表示没有有前置摄像头
 */
+ (BOOL)isFrontCameraAvailable;

/*!
 * @brief 判断是否支持拍照功能
 * @return YES表示支持拍照功能，否则表示不支持拍照功能
 */
+ (BOOL)canTakePhoto;

/*!
 * @brief 判断是否允许使用相册
 * @return YES表示允许使用相册，否则表示不允许使用相册
 */
+ (BOOL)isPhotoLibraryAvailable;

/*!
 * @brief 判断是否允许用户从相册中选择图片
 * @return YES表示允许用户从相册中选择图片，否则表示不允许用户从相册中选择图片
 */
+ (BOOL)canPickPhotosFromPhotoLibrary;

/*!
 * @brief 判断是否允许用户从相册中选择音频/视频
 * @return YES表示允许用户从相册中选择音频/视频，否则表示不允许用户从相册中选择音频/视频
 */
+ (BOOL)canPickVideosFromPhotoLibrary;



@end
