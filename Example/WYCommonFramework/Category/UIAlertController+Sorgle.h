//
//  UIAlertController+Sorgle.h
//  LoginRigister
//
//  Created by Sorgle on 16/5/10.
//  Copyright © 2016年 Sorgle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (Sorgle)

/** 只有标题(标题不能修改) 且没有按钮点击事件的 UIAlertController */
+ (UIAlertController *)SG_alertControllerWithTitle:(NSString *)title;

/** 只有标题(标题可修改) 且有按钮点击事件的 UIAlertController */
+ (UIAlertController *)SG_alertControllerWithTitle:(NSString *)title btnTitle:(NSString *)btnTitle preferredStyle:(UIAlertControllerStyle)preferredStyle sureBtnAction:(void(^)())sureAction;

/** 标题、信息、一个按钮(按钮文字可修改) 且有按钮点击事件的 UIAlertController */
+ (UIAlertController *)SG_alertControllerWithTitle:(NSString *)title message:(NSString *)message btnTitle:(NSString *)btnTitle preferredStyle:(UIAlertControllerStyle)preferredStyle sureBtnAction:(void(^)())sureAction;

/** 标题、信息、固定按钮文字的(确定、取消) UIAlertController */
+ (UIAlertController *)SG_alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle sureAction:(void(^)())sureAction cancelAction:(void(^)())cancelAction;

/** 标题、信息、可修改按钮文字的 UIAlertController */
+ (UIAlertController *)SG_alertControllerWithTitle:(NSString *)title message:(NSString *)message sureBtn:(NSString *)sureBtn cancelBtn:(NSString *)cancelBtn preferredStyle:(UIAlertControllerStyle)preferredStyle sureBtnAction:(void(^)())sureAction cancelBtnAction:(void(^)())cancelAction;

/** 标题、信息、2 个确定按钮的文字可修改的 UIAlertController */
+ (UIAlertController *)SG_alertControllerWithTitle:(NSString *)title message:(NSString *)message leftSureBtn:(NSString *)leftSureBtn rightSureBtn:(NSString *)rightSureBtn preferredStyle:(UIAlertControllerStyle)preferredStyle leftSureBtnAction:(void(^)())leftSureBtnAction rightSureBtnAction:(void(^)())rightSureBtnAction;

+ (void)SG_alertWithMessage:(NSString *)message toVC:(UIViewController *)parentVC sureBtnAction:(void(^)())sureAction;;

@end

