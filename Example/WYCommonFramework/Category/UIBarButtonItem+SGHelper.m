//
//  UIBarButtonItem+SGHelper.m
//  UIBarButtonItem+SGHelper
//
//  Created by Sorgle on 15/7/13.
//  Copyright © 2015年 Sorgle. All rights reserved.
//

#import "UIBarButtonItem+SGHelper.h"
#import "UIColor+GKColor.h"

@implementation UIBarButtonItem (SGHelper)

 

//／ 返回带图片的 UIBarButtonItem
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage{
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    // 设置图片
    [button setBackgroundImage:[UIImage imageNamed:image] forState:(UIControlStateNormal)];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:(UIControlStateHighlighted)];
    // Button 点击事件
    [button addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
    // 设置尺寸
    button.frame = CGRectMake(0, 0, button.currentBackgroundImage.size.width, button.currentBackgroundImage.size.height);
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

//／ 返回纯字体的 UIBarButtonItem
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action title:(NSString *)title titleColor:(UIColor *)titleColor titleFond:(UIFont *)titleFond {
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [button setTitle:title forState:(UIControlStateNormal)];
    [button setTitleColor:titleColor forState:(UIControlStateNormal)];
    button.titleLabel.font = titleFond;
    // Button 点击事件
    [button addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
    // 设置尺寸
    [button sizeToFit];
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

+ (UIBarButtonItem *)gk_defaultBarButtonItemWithTarget:(id)target action:(SEL)action title:(NSString *)title
{
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [button setTitle:title forState:(UIControlStateNormal)];
    [button setTitleColor:[UIColor black_333333] forState:(UIControlStateNormal)];
    button.titleLabel.font = [UIFont systemFontOfSize:14];
    // Button 点击事件
    [button addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
    // 设置尺寸
    [button sizeToFit];
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}


+ (UIBarButtonItem *)gk_defaultBarButtonItemWithTarget:(id)target action:(SEL)action icon:(NSString *)icon
{
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [button setImage:[UIImage imageNamed:icon] forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:14];
    // Button 点击事件
    [button addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
    // 设置尺寸
    [button sizeToFit];
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}


@end


