//
//  NSString+MAC.h
//  jinwan
//
//  Created by GKiOS on 2017/6/27.
//  Copyright © 2017年 wy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MAC)

// 获取设备MAC地址
+ (NSString *)getMacAddress;
// 获取设备IP地址
+ (NSString *)getIPAddress;
//获取设备类型
+ (NSString*)getIphoneType;
//手机系统
+ (NSString *)getSystemVersion;

@end
