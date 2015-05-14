//
//  NSError+HYBKit.h
//  HYBKitDemo
//
//  Created by 黄仪标 on 15/3/2.
//  Copyright (c) 2015年 xiaoyaor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonCryptor.h>

/**
 * 加密算法错误Error Domin
 */
extern NSString * const kCommonCryptoErrorDomain;

@interface NSError (HYBKit)

/**
 * 根据加密算法状态，生成错误对象
 */
+ (NSError *)errorWithCCCryptorStatus:(CCCryptorStatus)status;

@end
