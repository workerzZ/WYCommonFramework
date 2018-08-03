//
//  UIFont+Swizzle.m
//  jinwan
//
//  Created by GKiOS on 2017/7/7.
//  Copyright © 2017年 wy. All rights reserved.
//

#import "UIFont+Swizzle.h"
#import <objc/runtime.h>
@implementation UIFont (Swizzle)


//+ (void)load
//{
//     //获取imageName:方法的地址
//    Method imageNameMethod = class_getClassMethod(self, @selector(systemFontOfSize:));
//
//    // 获取wg_imageWithName:方法的地址
//    Method wg_imageWithNameMethod = class_getClassMethod(self, @selector(gk_fontWithSize:));
//
//    // 交换方法地址，相当于交换实现方式
//    method_exchangeImplementations(imageNameMethod, wg_imageWithNameMethod);
//}

+ (UIFont *)gk_fontWithSize:(CGFloat)font
{
    if (@available(iOS 8.2, *)) {
        return [UIFont fontWithName:@"PingFangSC-Medium" size:font];
    } else {
        return [UIFont systemFontOfSize:font];
    }
}

@end
