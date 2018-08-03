//
//  UINavigationController+GKConfig.m
//  JCBJCB
//
//  Created by 王尧 on 2017/7/12.
//  Copyright © 2017年 GKiOS. All rights reserved.
//

#import "UINavigationController+GKConfig.h"
#import "UIImage+Library.h"

@implementation UINavigationController (GKConfig)

 
/**
 移除导航栏黑色线条
 
 @param hidden 是否隐藏
 */
- (void)useMethodToFindBlackLineAndHidden:(BOOL)hidden
{
    UIImageView* blackLineImageView = [self findHairlineImageViewUnder:self.navigationBar];
    CGRect rect = CGRectMake(blackLineImageView.frame.origin.x, blackLineImageView.frame.origin.y, blackLineImageView.frame.size.width, 0.5);
    blackLineImageView.frame = rect;
//    blackLineImageView.backgroundColor = [UIColor gray_e6e6e6];
    // 隐藏黑线（在viewWillAppear时隐藏，在viewWillDisappear时显示）
    blackLineImageView.hidden = hidden;
}

- (UIImageView *)findHairlineImageViewUnder:(UIView *)view
{
    if ([view isKindOfClass:UIImageView.class] && view.bounds.size.height <= 1.0) {
        return (UIImageView *)view;
    }
    for (UIView *subview in view.subviews) {
        UIImageView *imageView = [self findHairlineImageViewUnder:subview];
        if (imageView) {
            return imageView;
        }
    }
    return nil;
}

@end
