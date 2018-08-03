//
//  UIViewController+NavgationConfig.m
//  JCBJRProject
//
//  Created by 王尧 on 2018/7/27.
//  Copyright © 2018 jinchubao. All rights reserved.
//

#import "UIViewController+NavgationConfig.h"
#import "UIImage+GKGradientImage.h"
#import "UIImage+Library.h"
#import <FDFullscreenPopGesture/UINavigationController+FDFullscreenPopGesture.h>

@implementation UIViewController (NavgationConfig)


- (void)configViewWillAppearWithNavStyle:(NavigationStyle)navigationStyle
{
    // 如果当前页面导航隐藏, 则不需要刷新头部导航样式
    //
    if (!self.fd_prefersNavigationBarHidden) {
        // 根绝isTopBackViewWhite 设置头部导航
        
        if (navigationStyle == ThemeRed) {
            
            [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
            
            UIImage *navImg = [UIImage gk_gradientLineWithStartColor:[UIColor gk_colorWithHexString:@"#FF5050"] endColor:[UIColor gk_colorWithHexString:@"#FF643A"] size:self.navigationController.view.bounds.size];
            [self.navigationController.navigationBar setBackgroundImage:navImg forBarMetrics:UIBarMetricsDefault];
            
            [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:18],NSForegroundColorAttributeName:[UIColor whiteColor]}];
            
            UIButton *leftButton = (UIButton *)self.navigationItem.leftBarButtonItem.customView;
            [leftButton setImage:[[UIImage imageNamed:@"navigationButtonReturnWhite"] gk_imageWithPadding:UIEdgeInsetsMake(0, 0, 0, 20)] forState:UIControlStateNormal];
            
            UIButton *rightButton = (UIButton *)self.navigationItem.rightBarButtonItem.customView;
            [rightButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            
        } else {
            
            [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleDefault;
            
            [self.navigationController.navigationBar setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];
            
            [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:18],NSForegroundColorAttributeName:[UIColor black_333333]}];
            
            UIButton *leftButton = (UIButton *)self.navigationItem.leftBarButtonItem.customView;
            [leftButton setImage:[[UIImage imageNamed:@"navigationButtonReturn"] gk_imageWithPadding:UIEdgeInsetsMake(0, 0, 0, 20)] forState:UIControlStateNormal];
            
            UIButton *rightButton = (UIButton *)self.navigationItem.rightBarButtonItem.customView;
            [rightButton setTitleColor:[UIColor black_333333] forState:UIControlStateNormal];
        }
    }
    
    [self setNeedsStatusBarAppearanceUpdate];
}

@end
