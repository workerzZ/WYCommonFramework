//
//  UIView+Enlarge.h
//  jingyijinfu
//
//  Created by GKiOS on 2017/4/27.
//  Copyright © 2017年 GKiOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Enlarge)

- (void)setEnlargeEdge:(CGFloat) size;


- (void)setEnlargeEdgeWithTop:(CGFloat) top right:(CGFloat) right bottom:(CGFloat) bottom left:(CGFloat) left;

+ (UIImage *)drawLineByImageView:(UIImageView *)imageView lineWidth:(CGFloat)lineWidth color:(UIColor *)color;


@end
