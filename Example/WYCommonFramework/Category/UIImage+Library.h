//
//  UIImage+Library.h
//  jinwan
//
//  Created by GKiOS on 2017/5/31.
//  Copyright © 2017年 wy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Library)
/// 返回一张可以随意拉伸不变形的图片
+ (UIImage *)SG_resizableImageWithName:(NSString *)name;
- (UIImage *)gk_imageWithPadding:(UIEdgeInsets)padding;
+ (UIImage *)gk_imageWithColor:(UIColor *)color size:(CGSize)size;

@end
