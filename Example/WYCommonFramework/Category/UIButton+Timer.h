//
//  UIButton+Timer.h
//  qidiandian
//
//  Created by qddios2 on 16/12/21.
//  Copyright © 2016年 lvguifeng. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ButtonTimeCompletionBlock) ();

@interface UIButton (Timer)
- (void)timeCount:(NSInteger)time;
- (void)timeCount:(NSInteger)time title:(NSString *)title;
- (void)timeCount:(NSInteger)time title:(NSString *)title unenabledTitle:(NSString *)unenabledTitle;

- (void)timeCount:(NSInteger)time completion:(ButtonTimeCompletionBlock)block;
@end
