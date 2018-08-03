//
//  UIBarButtonItem+SGHelper.h
//  UIBarButtonItem+SGHelper
//
//  Created by Sorgle on 15/7/13.
//  Copyright © 2015年 Sorgle. All rights reserved.
//
//  拓展 UIBarButtonItem 的创建：快速创建自定义 UIBarButtonItem 样式

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (SGHelper)
/**
 *  返回带图片的 UIBarButtonItem
 *
 *  @param target       点击 item 后调用哪个对象的方法
 *  @param action       点击 item 后调用 target 的哪个方法
 *  @param image        图片
 *  @param highImage    高亮的图片
 *
 *  @return 创建完的 item
 */
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;

/**
 *  返回纯字体的 UIBarButtonItem
 *
 *  @param target       点击 item 后调用哪个对象的方法
 *  @param action       点击 item 后调用 target 的哪个方法
 *  @param title        标题
 *  @param titleColor   标题颜色
 *  @param titleFond    标题字号
 *
 *  @return 创建完的 item
 */
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action title:(NSString *)title titleColor:(UIColor *)titleColor titleFond:(UIFont *)titleFond;


/**
 根据APP 需要自己设置一款 导航栏标题的style
 
 @param target target
 @param action action
 @param title title
 @return duixiang
 */
+ (UIBarButtonItem *)gk_defaultBarButtonItemWithTarget:(id)target action:(SEL)action title:(NSString *)title ;

+ (UIBarButtonItem *)gk_defaultBarButtonItemWithTarget:(id)target action:(SEL)action icon:(NSString *)icon;

@end

