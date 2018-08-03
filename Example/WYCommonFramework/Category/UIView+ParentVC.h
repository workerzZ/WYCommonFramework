//
//  UIView+ParentVC.h
//  jingyijinfu
//
//  Created by GKiOS on 2017/5/2.
//  Copyright © 2017年 GKiOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ParentVC)
- (UIViewController *)jy_findParentViewController;

- (BOOL)isDisplayedInScreen;

@end
