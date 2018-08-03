//
//  UIAlertController+Sorgle.m
//  LoginRigister
//
//  Created by Sorgle on 16/5/10.
//  Copyright © 2016年 Sorgle. All rights reserved.
//

#import "UIAlertController+Sorgle.h"

@implementation UIAlertController (Sorgle)

 

+ (UIAlertController *)SG_alertControllerWithTitle:(NSString *)title {
    UIAlertController *aC = [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:(UIAlertControllerStyleAlert)];
    UIAlertAction *aASure = [UIAlertAction actionWithTitle:@"确定" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [aC addAction:aASure];
    return aC;
}

+ (UIAlertController *)SG_alertControllerWithTitle:(NSString *)title btnTitle:(NSString *)btnTitle preferredStyle:(UIAlertControllerStyle)preferredStyle sureBtnAction:(void(^)())sureAction {
    UIAlertController * alertC = [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:preferredStyle];
    UIAlertAction *sureAc = [UIAlertAction actionWithTitle:btnTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (sureAction) {
            sureAction();
        }
    }];

    [alertC addAction:sureAc];
    return alertC;
}

/** 标题、信息、一个按钮(按钮文字可修改) 且有按钮点击事件的 UIAlertController */
+ (UIAlertController *)SG_alertControllerWithTitle:(NSString *)title message:(NSString *)message btnTitle:(NSString *)btnTitle preferredStyle:(UIAlertControllerStyle)preferredStyle sureBtnAction:(void(^)())sureAction {
    UIAlertController * alertC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    UIAlertAction *sureAc = [UIAlertAction actionWithTitle:btnTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (sureAction) {
            sureAction();
        }
    }];
    
    [alertC addAction:sureAc];
    return alertC;
}

+ (UIAlertController *)SG_alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle sureAction:(void(^)())sureAction cancelAction:(void(^)())cancelAction{
    UIAlertController * alertC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    UIAlertAction *sureAc = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (sureAction) {
            sureAction();
        }
    }];
    UIAlertAction *cancelAc = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        if (cancelAction) {
            cancelAction();
        }
    }];
    [alertC addAction:sureAc];
    [alertC addAction:cancelAc];
    return alertC;
}

/** 标题、信息、可修改按钮文字的 UIAlertController */
+ (UIAlertController *)SG_alertControllerWithTitle:(NSString *)title message:(NSString *)message sureBtn:(NSString *)sureBtn cancelBtn:(NSString *)cancelBtn preferredStyle:(UIAlertControllerStyle)preferredStyle sureBtnAction:(void(^)())sureAction cancelBtnAction:(void(^)())cancelAction {
    UIAlertController * alertC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    UIAlertAction *sureAc = [UIAlertAction actionWithTitle:sureBtn style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (sureAction) {
            sureAction();
        }
    }];
    UIAlertAction *cancelAc = [UIAlertAction actionWithTitle:cancelBtn style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        if (cancelAction) {
            cancelAction();
        }
    }];
    [alertC addAction:sureAc];
    [alertC addAction:cancelAc];
    return alertC;
}

/** 标题、信息、2 个确定按钮的文字可修改的 UIAlertController */
+ (UIAlertController *)SG_alertControllerWithTitle:(NSString *)title message:(NSString *)message leftSureBtn:(NSString *)leftSureBtn rightSureBtn:(NSString *)rightSureBtn preferredStyle:(UIAlertControllerStyle)preferredStyle leftSureBtnAction:(void(^)())leftSureBtnAction rightSureBtnAction:(void(^)())rightSureBtnAction {
    UIAlertController * alertC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    UIAlertAction *leftSureAc = [UIAlertAction actionWithTitle:leftSureBtn style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (leftSureBtnAction) {
            leftSureBtnAction();
        }
    }];
    UIAlertAction *rightSureAcAc = [UIAlertAction actionWithTitle:rightSureBtn style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (rightSureBtnAction) {
            rightSureBtnAction();
        }
    }];
    [alertC addAction:leftSureAc];
    [alertC addAction:rightSureAcAc];
    return alertC;
}


+ (void)SG_alertWithMessage:(NSString *)message toVC:(UIViewController *)parentVC sureBtnAction:(void (^)())sureAction
{
    UIAlertController * alertC = [UIAlertController alertControllerWithTitle:@"提示" message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *sureAc = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (sureAction) {
            sureAction();
        }
    }];
    
    [alertC addAction:sureAc];
    [parentVC presentViewController:alertC animated:YES completion:nil];
}

@end



