//
//  UIButton+Library.m
//  jinwan
//
//  Created by GKiOS on 2017/5/31.
//  Copyright © 2017年 wy. All rights reserved.
//

#import "UIButton+Library.h"

@implementation UIButton (Library)

 

- (void)gk_setExTitle:(NSString *)title forState:(UIControlState)state
{
    [self setTitle:title forState:UIControlStateNormal];
    [self sizeToFit];
    if (self.imageView.image) {
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -self.imageView.frame.size.width, 0, self.imageView.frame.size.width)];
        [self setImageEdgeInsets:UIEdgeInsetsMake(0, self.titleLabel.frame.size.width, 0, -self.titleLabel.frame.size.width)];
    }
}
- (instancetype)initWithTitle:(NSString *)title image:(UIImage *)image target:(id)target action:(SEL)action
{
    self = [UIButton buttonWithType:UIButtonTypeCustom];
    if (self) {
        [self setTitle:title forState:UIControlStateNormal];
        [self setImage:image forState:UIControlStateNormal];
        [self sizeToFit];
        if (image) {
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -self.imageView.frame.size.width, 0, self.imageView.frame.size.width)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, self.titleLabel.frame.size.width, 0, -self.titleLabel.frame.size.width)];
        }
        [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        self.titleLabel.minimumScaleFactor = 0.3;
        self.titleLabel.numberOfLines = 1;
    }
    return self;
}

- (instancetype)initWithTitle:(NSString *)title image:(UIImage *)image selectImage:(UIImage *)selectImage target:(id)target action:(SEL)action
{
    self = [UIButton buttonWithType:UIButtonTypeCustom];
    if (self) {
        [self setTitle:title forState:UIControlStateNormal];
        [self setImage:image forState:UIControlStateNormal];
        [self setImage:selectImage forState:UIControlStateSelected];
        [self sizeToFit];
        if (image) {
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -self.imageView.frame.size.width, 0, self.imageView.frame.size.width)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, self.titleLabel.frame.size.width, 0, -self.titleLabel.frame.size.width)];
        }
        [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        self.titleLabel.minimumScaleFactor = 0.3;
        self.titleLabel.numberOfLines = 1;
    }
    return self;
}

@end
