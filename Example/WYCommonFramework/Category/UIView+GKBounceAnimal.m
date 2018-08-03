//
//  UIView+GKBounceAnimal.m
//  jinwan
//
//  Created by GKiOS on 2017/6/9.
//  Copyright © 2017年 wy. All rights reserved.
//

#import "UIView+GKBounceAnimal.h"
static CGFloat kTransitionDuration = 0.3f;
static CGFloat kBegainScale = 1.1f;
static CGFloat kMiddleScale = 0.9f;
@implementation UIView (GKBounceAnimal)



- (void)beginAnimationWithBegainScale:(CGFloat)begainScale middleScale:(CGFloat)middleScale duration:(CGFloat)duration
{
    [self bounce0Animation];
    if (kTransitionDuration > 0) {
        kTransitionDuration = duration;
    }
    if (begainScale > 0) {
        kBegainScale = begainScale;
    }
    
    if (middleScale >0) {
        kMiddleScale = middleScale;
    }
}

#pragma mark - 动画
- (void)bounce0Animation{
    self.transform = CGAffineTransformScale([self transformForOrientation], 0.0001f, 0.0001f);
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:kTransitionDuration/1.5f];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(bounce1AnimationDidStop)];
    self.transform = CGAffineTransformScale([self transformForOrientation], kBegainScale, kBegainScale);
    [UIView commitAnimations];
}

- (void)bounce1AnimationDidStop{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:kTransitionDuration/2];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(bounce2AnimationDidStop)];
    self.transform = CGAffineTransformScale([self transformForOrientation], kMiddleScale, kMiddleScale);
    [UIView commitAnimations];
}
- (void)bounce2AnimationDidStop{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:kTransitionDuration/2];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(bounceDidStop)];
    self.transform = [self transformForOrientation];
    [UIView commitAnimations];
}

- (void)bounceDidStop{
    
}

- (CGAffineTransform)transformForOrientation
{
    UIInterfaceOrientation orientation = [UIApplication sharedApplication].statusBarOrientation;
    if (orientation == UIInterfaceOrientationLandscapeLeft) {
        return CGAffineTransformMakeRotation(M_PI*1.5f);
    } else if (orientation == UIInterfaceOrientationLandscapeRight) {
        return CGAffineTransformMakeRotation(M_PI/2.0f);
    } else if (orientation == UIInterfaceOrientationPortraitUpsideDown) {
        return CGAffineTransformMakeRotation(-M_PI);
    } else {
        return CGAffineTransformIdentity;
    }
}
@end
