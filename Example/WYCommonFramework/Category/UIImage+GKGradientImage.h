//
//  UIImage+GKGradientImage.h
//  JCBJCB
//
//  Created by GKiOS on 2017/7/7.
//  Copyright © 2017年 GKiOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (GKGradientImage)

+ (UIImage *)gk_gradientLineWithStartColor:(UIColor *)startColor endColor:(UIColor *)endColor size:(CGSize)size;

@end
