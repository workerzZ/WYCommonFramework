//
//  UIImage+Library.m
//  jinwan
//
//  Created by GKiOS on 2017/5/31.
//  Copyright © 2017年 wy. All rights reserved.
//

#import "UIImage+Library.h"

@implementation UIImage (Library)

 

+ (UIImage *)SG_resizableImageWithName:(NSString *)name {
    UIImage *normal = [UIImage imageNamed:name];
    CGFloat w = normal.size.width * 0.5;
    CGFloat h = normal.size.height * 0.5;
    return [normal resizableImageWithCapInsets:UIEdgeInsetsMake(h, w, h, w)];
}

- (UIImage *)gk_imageWithPadding:(UIEdgeInsets)padding
{
    CGSize imageS = self.size;
    CGSize targetS = CGSizeMake((padding.left < 0 ? 0 : padding.left) + (padding.right < 0 ? 0 : padding.right) + imageS.width, (padding.top < 0 ? 0 : padding.top) + (padding.bottom < 0 ? 0 : padding.bottom) + imageS.height);
    UIGraphicsBeginImageContextWithOptions(targetS, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIGraphicsPushContext(context);
    CGPoint origin = CGPointMake(padding.left < 0 ? 0 : padding.left , padding.top < 0 ? 0 : padding.top);
    [self drawAtPoint:origin];
    UIGraphicsPopContext();
    UIImage *targetImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return targetImage;
}


+ (UIImage *)gk_imageWithColor:(UIColor *)color size:(CGSize)size
{
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
