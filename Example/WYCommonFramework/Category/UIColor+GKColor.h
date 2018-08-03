//
//  UIColor+GKColor.h
//  jinwan
//
//  Created by 王尧 on 2017/5/27.
//  Copyright © 2017年 wy. All rights reserved.
//

#import <UIKit/UIKit.h>

UIKIT_EXTERN NSString *const CF5F5F5;
UIKIT_EXTERN NSString *const C333333;
UIKIT_EXTERN NSString *const CCCCCCC;
UIKIT_EXTERN NSString *const C444444;
UIKIT_EXTERN NSString *const C999999;
UIKIT_EXTERN NSString *const C5FA3FF;
UIKIT_EXTERN NSString *const CE5F0FF;
UIKIT_EXTERN NSString *const C5FA3FF;
UIKIT_EXTERN NSString *const CFF9000;
UIKIT_EXTERN NSString *const CBBBBBB;
UIKIT_EXTERN NSString *const CFFFFFF;
UIKIT_EXTERN NSString *const C73A9FF;
UIKIT_EXTERN NSString *const CAAAAAA;
UIKIT_EXTERN NSString *const C666666;
UIKIT_EXTERN NSString *const CF77B00;
UIKIT_EXTERN NSString *const CEEEEEE;
UIKIT_EXTERN NSString *const C262626;

UIKIT_EXTERN NSString *const C6AB0FF;
UIKIT_EXTERN NSString *const CF52A2A;
UIKIT_EXTERN NSString *const CF6F6F6;
UIKIT_EXTERN NSString *const CFFF7EB;
UIKIT_EXTERN NSString *const CCEC4BD;
UIKIT_EXTERN NSString *const CD8D8D8;
UIKIT_EXTERN NSString *const C979797;
UIKIT_EXTERN NSString *const Cc1c1c1;
UIKIT_EXTERN NSString *const Cfa5454;
UIKIT_EXTERN NSString *const Ce6e6e6;
UIKIT_EXTERN NSString *const C808080;
UIKIT_EXTERN NSString *const CF6F7FB;
UIKIT_EXTERN NSString *const CFA6B54;
UIKIT_EXTERN NSString *const CFD6244;
UIKIT_EXTERN NSString *const C8ad4fa;
UIKIT_EXTERN NSString *const Cffb638;
UIKIT_EXTERN NSString *const C646464;
UIKIT_EXTERN NSString *const C000000;
UIKIT_EXTERN NSString *const CFE5F3C;
UIKIT_EXTERN NSString *const C2F353C;


@interface UIColor (GKColor)

+ (UIColor *)gk_colorWithHexString:(NSString *)str;

+ (UIColor *)gk_colorWithHexString:(NSString *)str alpha:(CGFloat)alpha;

+ (UIColor *)gk_colorWithHex:(long)col alpha:(CGFloat)alpha;


/**
 背景灰色
 
 @return 颜色
 */
+ (UIColor *)gray_f5f5f5;
+ (UIColor *)gray_F6F6F6;
+ (UIColor *)gray_f6f7fb;

/**
 线条颜色

 @return 颜色
 */
+ (UIColor *)gray_e6e6e6;

/** 弹框全屏背景色*/
+ (UIColor *)gray_c1c1c1;

/** 金碗背景色*/
+ (UIColor *)gray_d8d8d8;

/**
 输入控件的placeHolder占位符的颜色
 
 @return 颜色
 */
+ (UIColor *)gray_cccccc;

/**
 button不可用的灰色
 
 @return 颜色
 */
+ (UIColor *)gray_999999;

/**
 线条灰
 
 @return 灰色
 */
+ (UIColor *)gray_EEEEEE;

+ (UIColor *)gray_979797;


/**
 button字体灰
 
 @return 灰色
 */
+ (UIColor *)gray_bbbbbb;


/**
 灰色 协议
 
 @return 颜色
 */
+ (UIColor *)gray_aaaaaa;

/**
 灰色 点(选中)
 
 @return 颜色
 */
+ (UIColor *)gray_909090;

/**
 灰色 点（未选中）
 
 @return 颜色
 */
+ (UIColor *)gray_D7D7D7;

/**
 信息错误提示语
 
 @return 颜色
 */
+ (UIColor *)gray_808080;

/**
 输入控件前面的标题控件的颜色
 
 @return 颜色
 */
+ (UIColor *)black_333333;

/**
 导航栏标题的颜色
 
 @return 颜色
 */
+ (UIColor *)black_222222;


/**
 输入字体的颜色
 
 @return 颜色
 */
+ (UIColor *)black_444444;

+ (UIColor *)black_666666;

+ (UIColor *)black_262626;

/**
 详情页金额颜色
 
 @return 颜色
 */
+ (UIColor *)black_000000;

/**
 出借页默认标题颜色
 
 @return 颜色
 */
+ (UIColor *)black_2F353C;

/**
 buttton背景的颜色
 
 @return 颜色
 */
+ (UIColor *)blue_5FA3FF;


/**
 输入控件的内容展示的背景色 主要是输入手机号, 银行卡号
 
 @return 颜色
 */
+ (UIColor *)blue_E5F0FF;


/**
 button字体蓝
 
 @return 颜色
 */
+ (UIColor *)blue_73A9FF;

/**
 用于重要提示语

 @return 颜色
 */
+ (UIColor *)BLUE_6AB0FF;

/**
 橘色
 
 @return 颜色
 */
+ (UIColor *)orange_FF9000;

+ (UIColor *)orange_CF77B00;


/**
 红色,用于理财页,失败、被拒提示语

 @return 颜色
 */
+ (UIColor *)red_F52A2A;


/**
 渐变红色

 @return 颜色
 */
+ (UIColor *)red_FA6B54;

+ (UIColor *)red_FD6244;

/**
 红色,APP主题色调

 @return 颜色
 */
+ (UIColor *)red_FA5454;

/**
 红色,详情页粗体
 
 @return 颜色
 */
+ (UIColor *)red_FF4F28;

/**
 红色，标题前面的icon
 
 @return 颜色
 */
+ (UIColor *)red_FE5F3C;

/**
 淡黄色,用于辅助背景色

 @return 颜色
 */
+ (UIColor *)yellow_FFF7EB;


/**
 用于不可点击

 @return 颜色
 */
+ (UIColor *)yellow_CEC4BD;


/**
 标签颜色

 @return 颜色
 */
+ (UIColor *)blue_C8ad4fa;
+ (UIColor *)orange_Cffb638;


@end
