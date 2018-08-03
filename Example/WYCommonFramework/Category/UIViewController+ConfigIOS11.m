//
//  UIViewController+ConfigIOS11.m
//  JCBJCB
//
//  Created by 王尧 on 2017/9/29.
//  Copyright © 2017年 GKiOS. All rights reserved.
//

#import "UIViewController+ConfigIOS11.h"

@implementation UIViewController (ConfigIOS11)


- (void)configIOS11WithScrollView:(UIScrollView *)scrollView
{
#ifdef __IPHONE_11_0
    if (@available(iOS 11.0, *)) {
        scrollView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
        scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
#endif
    self.edgesForExtendedLayout = UIRectEdgeBottom;
}

@end
