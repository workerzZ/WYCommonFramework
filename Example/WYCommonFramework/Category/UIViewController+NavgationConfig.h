//
//  UIViewController+NavgationConfig.h
//  JCBJRProject
//
//  Created by 王尧 on 2018/7/27.
//  Copyright © 2018 jinchubao. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 导航样式
 
 - Normal: 正常
 - appThemeRed: 主题红
 */
typedef NS_ENUM(NSInteger, NavigationStyle) {
    Normal,
    ThemeRed,
};

@interface UIViewController (NavgationConfig)


/**
 配置导航

 @param navigationStyle 导航样式
 */
- (void)configViewWillAppearWithNavStyle:(NavigationStyle)navigationStyle;

@end
