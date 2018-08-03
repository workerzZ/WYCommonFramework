//
//  UIView+GKBounceAnimal.h
//  jinwan
//
//  Created by GKiOS on 2017/6/9.
//  Copyright © 2017年 wy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (GKBounceAnimal)
/**
 *  点赞的动画效果 有小变大
 *
 *  @param begainScale 初始比例
 *  @param middleScale 中间放大比例
 *  @param duration    动画时间
 */
- (void)beginAnimationWithBegainScale:(CGFloat)begainScale middleScale:(CGFloat)middleScale duration:(CGFloat)duration;
@end
