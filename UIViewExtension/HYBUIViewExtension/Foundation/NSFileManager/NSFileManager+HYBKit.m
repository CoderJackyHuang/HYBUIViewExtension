//
//  NSFileManager+HYBKit.m
//  HYBKitDemo
//
//  Created by 黄仪标 on 15/2/12.
//  Copyright (c) 2015年 xiaoyaor. All rights reserved.
//

#import "NSFileManager+HYBKit.h"

@implementation NSFileManager (HYBKit)

- (BOOL)isFileExists:(NSString *)filePath {
  NSFileManager *fileManager = [NSFileManager defaultManager];
  BOOL result = [fileManager fileExistsAtPath:filePath];
  return result;
}

- (BOOL)isFile:(NSString *)filePath timeout:(NSTimeInterval)timeout {
  if ([[NSFileManager defaultManager] isFileExists:filePath]) {
    NSError *error = nil;
    NSDictionary *attributes = [[NSFileManager defaultManager] attributesOfItemAtPath:filePath
                                                                                error:&error];
    if (error) {
      return YES;
    }
    
    if ([attributes isKindOfClass:[NSDictionary class]] && attributes) {
      NSString *createDate = [attributes objectForKey:@"NSFileModificationDate"];
      createDate = [NSString stringWithFormat:@"%@", createDate];
      if (createDate.length >= 19) {
        createDate = [createDate substringToIndex:19];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
        
        NSDate *sinceDate = [formatter dateFromString:createDate];
        NSTimeInterval interval = [[NSDate date] timeIntervalSinceDate:sinceDate];
        BOOL isTimeOut = (long)interval > timeout;
        return isTimeOut;
      }
    }
  }
  
  return YES;
}

- (long)fileSizeWithPath:(NSString *)path {
  NSError *error = nil;
  NSDictionary *attributes = [[NSFileManager defaultManager] attributesOfItemAtPath:path
                                                                              error:&error];
  if (error) {
    return 0;
  }
  NSString *fileSize = [NSString stringWithFormat:@"%@", [attributes objectForKey:@"NSFileSize"]];
  return fileSize.integerValue;
}
@end
