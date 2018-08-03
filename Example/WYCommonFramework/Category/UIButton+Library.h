//
//  UIButton+Library.h
//  jinwan
//
//  Created by GKiOS on 2017/5/31.
//  Copyright © 2017年 wy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Library)
- (void)gk_setExTitle:(NSString *)title forState:(UIControlState)state;

- initWithTitle:(NSString *)title image:(UIImage *)image target:(id)target action:(SEL)action;
- initWithTitle:(NSString *)title image:(UIImage *)image selectImage:(UIImage *)selectImage target:(id)target action:(SEL)action;

@end
