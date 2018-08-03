//
//  UIButton+Timer.m
//  qidiandian
//
//  Created by qddios2 on 16/12/21.
//  Copyright © 2016年 lvguifeng. All rights reserved.
//

#import "UIButton+Timer.h"
#import "NSString+Library.h"
#import "UIColor+GKColor.h"

@implementation UIButton (Timer)

 

- (void)timeCount:(NSInteger)time
{
    __block NSInteger temp = time;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    dispatch_source_set_timer(_timer, dispatch_walltime(NULL, 0), 1.0*NSEC_PER_SEC, 0);
    dispatch_source_set_event_handler(_timer, ^{
        if (temp <= 0) {
            dispatch_source_cancel(_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                self.enabled = YES;
                self.selected = YES;
                self.backgroundColor = [UIColor red_FA5454];
                [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
                [self setTitle:NSLocalizedString(@"重新获取", nil) forState:UIControlStateNormal];
            });
        } else {
            temp--;
            dispatch_async(dispatch_get_main_queue(), ^{
                self.enabled = NO;
                self.selected = NO;
                self.backgroundColor = [UIColor whiteColor];
                self.layer.borderColor = [UIColor red_FA5454].CGColor;
                self.layer.borderWidth = 1;
                [self setTitleColor:[UIColor red_FA5454] forState:UIControlStateNormal];
                [self setTitle:[NSString stringWithFormat:@"倒计时%ld%@", (long)temp, NSLocalizedString(@"s", nil)] forState:UIControlStateNormal];
            });
        }
    });
    dispatch_resume(_timer);
}

- (void)timeCount:(NSInteger)time title:(NSString *)title
{
    __block NSInteger temp = time;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    dispatch_source_set_timer(_timer, dispatch_walltime(NULL, 0), 1.0*NSEC_PER_SEC, 0);
    dispatch_source_set_event_handler(_timer, ^{
        if (temp <= 0) {
            dispatch_source_cancel(_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                self.enabled = YES;
                self.selected = YES;
                self.backgroundColor = [UIColor red_FA5454];
                [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
                [self setTitle:NSLocalizedString(title, nil) forState:UIControlStateNormal];
            });
        } else {
            temp--;
            dispatch_async(dispatch_get_main_queue(), ^{
                self.enabled = NO;
                self.selected = NO;
                self.backgroundColor = [UIColor whiteColor];
                self.layer.borderColor = [UIColor red_FA5454].CGColor;
                self.layer.borderWidth = 1;
                [self setTitleColor:[UIColor red_FA5454] forState:UIControlStateNormal];
                [self setTitle:[NSString stringWithFormat:@"倒计时%ld%@", (long)temp, NSLocalizedString(@"s", nil)] forState:UIControlStateNormal];
            });
        }
    });
    dispatch_resume(_timer);
}


- (void)timeCount:(NSInteger)time title:(NSString *)title unenabledTitle:(NSString *)unenabledTitle
{
    __block NSInteger temp = time;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    dispatch_source_set_timer(_timer, dispatch_walltime(NULL, 0), 1.0*NSEC_PER_SEC, 0);
    dispatch_source_set_event_handler(_timer, ^{
        if (temp <= 0) {
            dispatch_source_cancel(_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                self.enabled = YES;
                self.selected = YES;
                self.backgroundColor = [UIColor red_FA5454];
                [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
                [self setTitle:NSLocalizedString(title, nil) forState:UIControlStateNormal];
            });
        } else {
            temp--;
            dispatch_async(dispatch_get_main_queue(), ^{
                self.enabled = NO;
                self.selected = NO;
                self.backgroundColor = [UIColor whiteColor];
                self.layer.borderColor = [UIColor red_FA5454].CGColor;
                self.layer.borderWidth = 1;
                [self setTitleColor:[UIColor red_FA5454] forState:UIControlStateNormal];
                [self setTitle:[NSString stringWithFormat:@"倒计时%ld%@", (long)temp, NSLocalizedString(@"s", nil)] forState:UIControlStateNormal];
            });
        }
    });
    dispatch_resume(_timer);
}

- (void)timeCount:(NSInteger)time completion:(ButtonTimeCompletionBlock)block
{
    __block NSInteger temp = time;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    dispatch_source_set_timer(_timer, dispatch_walltime(NULL, 0), 1.0*NSEC_PER_SEC, 0);
    dispatch_source_set_event_handler(_timer, ^{
        if (temp <= 0) {
            dispatch_source_cancel(_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                self.enabled = YES;
                [self setTitle:NSLocalizedString(@"获取验证码", nil) forState:UIControlStateNormal];
                block();
            });
        } else {
            temp--;
            dispatch_async(dispatch_get_main_queue(), ^{
                self.enabled = NO;
                [self setTitle:[NSString stringWithFormat:@"%ld%@", (long)temp, NSLocalizedString(@"s", nil)] forState:UIControlStateNormal];
            });
        }
    });
    dispatch_resume(_timer);
}
@end
