//
//  CALayer+Animation.m
//  JCBJCB
//
//  Created by apple on 17/1/10.
//  Copyright © 2017年 Sorgle. All rights reserved.
//

#import "CALayer+Animation.h"

@implementation CALayer (Animation)

 

/** 文字左右抖动效果 */
- (void)SG_textShake {
    CAKeyframeAnimation *KFA = [CAKeyframeAnimation animationWithKeyPath:@"transform.translation.x"];
    CGFloat s = 5;
    KFA.values = @[@(-s),@(0),@(s),@(0),@(-s),@(0),@(s),@(0)];
    // 时长
    KFA.duration = 0.3f;
    // 重复
    KFA.repeatCount = 2;
    // 移除
    KFA.removedOnCompletion = YES;
    
    [self addAnimation:KFA forKey:@"shake"];
}

/// 视图动画 (transform)
- (void)SG_animationWithDuration:(CGFloat)duration values:(NSArray *)values {
    CAKeyframeAnimation *KFAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    KFAnimation.duration = duration;
    KFAnimation.removedOnCompletion = NO;
    KFAnimation.fillMode = kCAFillModeForwards;
    NSMutableArray *valueArr = [NSMutableArray array];
    CGFloat beginValue = [values[0] floatValue];
    CGFloat betweenValue = [values[1] floatValue];
    CGFloat endValue = [values[2] floatValue];
    [valueArr addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(beginValue, beginValue, beginValue)]];
    [valueArr addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(betweenValue, betweenValue, betweenValue)]];
    [valueArr addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(endValue, endValue, endValue)]];
    KFAnimation.values = valueArr;
    KFAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    [self addAnimation:KFAnimation forKey:nil];
}

@end
