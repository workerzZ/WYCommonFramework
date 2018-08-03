//
//  UIColor+GKColor.m
//  jinwan
//
//  Created by 王尧 on 2017/5/27.
//  Copyright © 2017年 wy. All rights reserved.
//

#import "UIColor+GKColor.h"

NSString *const CF5F5F5 = @"#F5F5F5";
NSString *const C333333 = @"#333333";
NSString *const CCCCCCC = @"#CCCCCC";
NSString *const C444444 = @"#444444";
NSString *const C222222 = @"#222222";
NSString *const C999999 = @"#999999";
NSString *const C5FA3FF = @"#5FA3FF";
NSString *const CE5F0FF = @"#E5F0FF";
NSString *const CFF9000 = @"#FF9000";
NSString *const CFFFFFF = @"#FFFFFF";
NSString *const CBBBBBB = @"#BBBBBB";
NSString *const C73A9FF = @"#4683F0";
NSString *const CAAAAAA = @"#AAAAAA";
NSString *const C666666 = @"#666666";
NSString *const CF77B00 = @"#F77B00";
NSString *const CEEEEEE = @"#EEEEEE";
NSString *const C262626 = @"#262626";

NSString *const C6AB0FF = @"#6AB0FF";
NSString *const CF52A2A = @"#F52A2A";
NSString *const CF6F6F6 = @"#F0F0F0";
NSString *const CFFF7EB = @"#FFF7EB";
NSString *const CCEC4BD = @"#CEC4BD";
NSString *const CD8D8D8 = @"#d8d8d8";
NSString *const C979797 = @"#979797";
NSString *const Cc1c1c1 = @"#c1c1c1";
NSString *const Cfa5454 = @"#FF5D37";
NSString *const Ce6e6e6 = @"#e6e6e6";
NSString *const C808080 = @"#808080";
NSString *const CF6F7FB = @"#F0F0F0";
NSString *const CFA6B54 = @"#FA6B54";
NSString *const CFD6244 = @"#FD6244";
NSString *const C8ad4fa = @"#8ad4fa";
NSString *const Cffb638 = @"#ffb638";
NSString *const C646464 = @"#646464";
NSString *const C909090 = @"#909090";
NSString *const CD7D7D7 = @"#D7D7D7";
NSString *const CFF4F28 = @"#FF4F28";
NSString *const C000000 = @"#000000";
NSString *const CFE5F3C = @"#FE5F3C";
NSString *const C2F353C = @"#2F353C";

@implementation UIColor (GKColor)

 

+ (UIColor *)gk_colorWithHexString:(NSString *)str
{
    return [UIColor gk_colorWithHexString:str alpha:1.0];
}

+ (UIColor *)gk_colorWithHexString:(NSString *)str alpha:(CGFloat)alpha
{
    const char *cStr = [str cStringUsingEncoding:NSASCIIStringEncoding];
    long x = strtol(cStr+1, NULL, 16);
    return [UIColor gk_colorWithHex:x alpha:alpha];
}

+ (UIColor *)gk_colorWithHex:(long)col alpha:(CGFloat)alpha
{
    unsigned char r, g, b;
    b = col & 0xFF;
    g = (col >> 8) & 0xFF;
    r = (col >> 16) & 0xFF;
    return [UIColor colorWithRed:(float)r/255.0f green:(float)g/255.0f blue:(float)b/255.0f alpha:alpha];
}

+ (UIColor *)gray_f6f7fb
{
    return [UIColor gk_colorWithHexString:CF6F7FB];
}

+ (UIColor *)gray_e6e6e6
{
    return [UIColor gk_colorWithHexString:Ce6e6e6];
}

+ (UIColor *)gray_f5f5f5
{
    return [UIColor gk_colorWithHexString:CF5F5F5];
}

+ (UIColor *)gray_F6F6F6
{
    return [UIColor gk_colorWithHexString:CF6F6F6];
}

+ (UIColor *)gray_c1c1c1
{
    return [UIColor gk_colorWithHexString:Cc1c1c1];
}

+ (UIColor *)gray_d8d8d8
{
    return [UIColor gk_colorWithHexString:CD8D8D8];
}

+ (UIColor *)gray_cccccc
{
    return [UIColor gk_colorWithHexString:CCCCCCC];
}

+ (UIColor *)gray_EEEEEE
{
    return [UIColor gk_colorWithHexString:CEEEEEE];
}

+ (UIColor *)gray_979797;
{
    return [UIColor gk_colorWithHexString:C979797];
}

+ (UIColor *)gray_999999
{
    return [UIColor gk_colorWithHexString:C999999];
}

+ (UIColor *)gray_bbbbbb
{
    return [UIColor gk_colorWithHexString:CBBBBBB];
}

+ (UIColor *)gray_aaaaaa
{
    return [UIColor gk_colorWithHexString:CAAAAAA];
}

+ (UIColor *)gray_808080
{
    return [UIColor gk_colorWithHexString:C808080];
}

+ (UIColor *)gray_909090
{
    return [UIColor gk_colorWithHexString:C909090];
}

+ (UIColor *)gray_D7D7D7
{
    return [UIColor gk_colorWithHexString:CD7D7D7];
}

+ (UIColor *)black_333333
{
    return [UIColor gk_colorWithHexString:C333333];
}

+ (UIColor *)black_222222
{
    return [UIColor gk_colorWithHexString:C222222];
}

+ (UIColor *)black_444444
{
    return [UIColor gk_colorWithHexString:C444444];
}

+ (UIColor *)black_666666
{
    return [UIColor gk_colorWithHexString:C666666];
}

+ (UIColor *)black_262626
{
    return [UIColor gk_colorWithHexString:C262626];
}

+ (UIColor *)black_000000
{
    return [UIColor gk_colorWithHexString:C000000];
}

+ (UIColor *)black_2F353C
{
    return [UIColor gk_colorWithHexString:C2F353C];
}

+ (UIColor *)blue_5FA3FF
{
    return [UIColor gk_colorWithHexString:C5FA3FF];
}

+ (UIColor *)blue_E5F0FF
{
    return [UIColor gk_colorWithHexString:CE5F0FF];
}

+ (UIColor *)blue_73A9FF
{
    return [UIColor gk_colorWithHexString:C73A9FF];
}

+ (UIColor *)BLUE_6AB0FF
{
    return [UIColor gk_colorWithHexString:C6AB0FF];
}

+ (UIColor *)orange_FF9000
{
    return [UIColor gk_colorWithHexString:CFF9000];
}

+ (UIColor *)orange_CF77B00
{
    return [UIColor gk_colorWithHexString:CF77B00];
}

+ (UIColor *)red_F52A2A
{
    return [UIColor gk_colorWithHexString:CF52A2A];
}

+ (UIColor *)red_FA6B54
{
    return [UIColor gk_colorWithHexString:CFA6B54];
}

+ (UIColor *)red_FD6244
{
    return [UIColor gk_colorWithHexString:CFD6244];
}

+ (UIColor *)red_FA5454
{
    return [UIColor gk_colorWithHexString:Cfa5454];
}

+ (UIColor *)red_FF4F28
{
    return [UIColor gk_colorWithHexString:CFF4F28];
}

+ (UIColor *)red_FE5F3C
{
    return [UIColor gk_colorWithHexString:CFE5F3C];
}

+ (UIColor *)yellow_FFF7EB
{
    return [UIColor gk_colorWithHexString:CFFF7EB];
}

+ (UIColor *)yellow_CEC4BD
{
    return [UIColor gk_colorWithHexString:CCEC4BD];
}

+ (UIColor *)blue_C8ad4fa
{
    return [UIColor gk_colorWithHexString:C8ad4fa];
}

+ (UIColor *)orange_Cffb638
{
    return [UIColor gk_colorWithHexString:Cffb638];
}

@end
