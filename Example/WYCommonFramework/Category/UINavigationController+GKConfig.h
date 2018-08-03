//
//  UINavigationController+GKConfig.h
//  JCBJCB
//
//  Created by 王尧 on 2017/7/12.
//  Copyright © 2017年 GKiOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (GKConfig)
/**
 移除导航栏黑色线条
 
 @param hidden 是否隐藏
 */
- (void)useMethodToFindBlackLineAndHidden:(BOOL)hidden;

@end
