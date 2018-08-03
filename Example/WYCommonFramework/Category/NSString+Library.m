//
//  NSString+Library.m
//  jinwan
//
//  Created by 王尧 on 2017/5/26.
//  Copyright © 2017年 wy. All rights reserved.
//

#import "NSString+Library.h"

@implementation NSString (Library)

 

- (NSString *)mobliePhoneNumberReplace
{
    return [self stringByReplacingCharactersInRange:NSMakeRange(3, 4) withString:@"****"];
}

- (NSString *)mobilePredicateMatch
{
    if (self.length == 0) {
        return @"手机号不能为空~";
    } else if (self.length == 11) {
        NSString *firstIndexString = [self substringToIndex:1];
        if ([firstIndexString isEqualToString:@"1"]) {
            return @"";
        } else {
            return @"请输入正确的手机号码~";
        }
    } else {
        return @"请输入正确的手机号码~";
    }
}

+ (BOOL)isBlankString:(NSString *)string
{
    if (string == nil || string == NULL) {
        return YES;
    }
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
        return YES;
    }
    return NO;
}

- (NSString *)clearOver0
{
    NSRange range = [self rangeOfString:@"."];
    if (range.location != NSNotFound) {
        NSMutableString *str = [self mutableCopy];
        for (NSUInteger i = str.length-1; i > range.location; i--) {
            if ([[self substringWithRange:NSMakeRange(i, 1)] isEqualToString:@"0"]) {
                [str deleteCharactersInRange:NSMakeRange(i, 1)];
            }
        }
        if (str.length && [[str substringFromIndex:str.length-1] isEqualToString:@"."]) {
            [str deleteCharactersInRange:NSMakeRange(str.length-1, 1)];
        }
        return str;
    }else {
        return self;
    }
}

- (NSString *)emailPredicateMatch
{
    NSString *expression = [NSString stringWithFormat:@"^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$"];
    NSError *error = NULL;
    NSRegularExpression *regex = [[NSRegularExpression alloc] initWithPattern:expression
                                                                      options:NSRegularExpressionCaseInsensitive
                                                                        error:&error];
    NSTextCheckingResult *match = [regex firstMatchInString:self
                                                    options:0
                                                      range:NSMakeRange(0,[self length])];
    if (!match) {
        return @"请输入正确的邮箱格式";
    } else {
        return @"";
    }
    
}

- (NSString *)stringUnitConverter
{
    NSInteger count = [self integerValue];
    if (count > 9999) {
        NSString *string = [NSString stringWithFormat:@"%.2f",count / 10000.0];
        string = [NSString stringWithFormat:@"%@万",[string clearOver0]];
        return string;
    } else {
        return self;
    }
}

- (NSString *)loginPassworldRegular
{
    // 8-16位, 不能全数字
    NSString *pattern = @".*[a-zA-Z]+.*$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:self];
    if (isMatch) {
        if (self.length >= 8 && self.length<=16) {
            return @"";
        }
        return @"密码格式不正确（8-16位，含字母)";
    } else {
        return @"密码格式不正确（8-16位，含字母)";
    }
}

    
- (NSString *)transactionPasswordReguler
{
    // 6-16位，不能是中文和空格
    NSString *pattern = @"[\u4e00-\u9fa5]|[\\s]";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:self];
    if (!isMatch) {
        if (self.length >= 6 && self.length<=16) {
            return @"";
        }
        return @"密码长度6-16位";
    } else {
        return @"密码长度6-16位";
    }
    return nil;
}
    

+ (NSMutableAttributedString *)setAttributedString:(NSString *)string textSpace:(NSInteger)textSpace textAlignment:(NSTextAlignment)textAlignment textColor:(UIColor *)textColor textFont:(UIFont *)textFont
{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]initWithString:string];;
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    [paragraphStyle setLineSpacing:textSpace];
    paragraphStyle.alignment = textAlignment;
    NSRange range = NSMakeRange(0, string.length);
    [attributedString setAttributes:@{
                                      NSForegroundColorAttributeName : textColor,
                                      NSFontAttributeName:textFont,
                                      NSParagraphStyleAttributeName:paragraphStyle
                                      } range:range];
    return attributedString;
}

/// 时间格式的转换
+ (NSString *)SG_dateConversionFormat:(NSString *)format time:(NSString *)time {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:[time doubleValue] / 1000];
    NSString *ok_time = [formatter stringFromDate:date];
    return ok_time;
}


/**
 *  根据判断条件设置String上特殊字体的颜色与大小
 *
 *  @param string     需要设置的String
 *  @param condition     判断条件
 *  @param color     需改变特殊字体的颜色
 *  @param textFont     需改变特殊字体的
 *  @param underlineStyle     下划线样式
 */
+ (NSAttributedString *)SG_smallWithThisString:(NSString *)string condition:(NSArray *)condition color:(UIColor *)color textFont:(CGFloat)textFont underlineStyle:(NSUnderlineStyle)underlineStyle {
    
    if (string.length == 0) {
        return nil;
    }
    
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:string];
    for (int i = 0; i < string.length; i ++) {
        // 这里的小技巧，每次只截取一个字符的范围
        NSString *subStr = [string substringWithRange:NSMakeRange(i, 1)];
        // 判断装有0-9的字符串的数字数组是否包含截取字符串出来的单个字符，从而筛选出符合要求的数字字符的范围NSMakeRange
        if ([condition containsObject:subStr]) {
            [attributeString addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(i, 1)];
            [attributeString addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:underlineStyle] range:NSMakeRange(i, 1)];
        }
    }
    // 字体
    [attributeString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:textFont] range:NSMakeRange(0, [attributeString length])];
    
    return attributeString;
}

- (NSAttributedString *)modifyStringStyleCondition:(NSArray *)condition color:(UIColor *)color textFont:(CGFloat)textFont underlineStyle:(NSUnderlineStyle)underlineStyle
{
    if (self.length == 0) {
        return nil;
    }
    
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:self];
    for (int i = 0; i < self.length; i ++) {
        // 这里的小技巧，每次只截取一个字符的范围
        NSString *subStr = [self substringWithRange:NSMakeRange(i, 1)];
        // 判断装有0-9的字符串的数字数组是否包含截取字符串出来的单个字符，从而筛选出符合要求的数字字符的范围NSMakeRange
        if ([condition containsObject:subStr]) {
            [attributeString addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(i, 1)];
            [attributeString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:textFont] range:NSMakeRange(i, 1)];
            [attributeString addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:underlineStyle] range:NSMakeRange(i, 1)];
        }
    }
    return attributeString;
}

- (NSAttributedString *)modifyStringDefaultStyleColor:(UIColor *)color textFont:(UIFont *)font
{
    if (self.length == 0) {
        return nil;
    }
    
    NSArray *condition = @[@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"."];
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:self];
    for (int i = 0; i < self.length; i ++) {
        NSString *subStr = [self substringWithRange:NSMakeRange(i, 1)];
        if ([condition containsObject:subStr]) {
            [attributeString addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(i, 1)];
            [attributeString addAttribute:NSFontAttributeName value:font range:NSMakeRange(i, 1)];
        }
    }
    return attributeString;
}



- (CGSize)sizeWithFont:(UIFont *)font maxW:(CGFloat)maxW
{
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = font;
    CGSize maxSize = CGSizeMake(maxW, MAXFLOAT);
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}


- (CGSize)sizeWithFont:(UIFont *)font
{
    return [self sizeWithFont:font maxW:MAXFLOAT];
}

- (NSString *)date_transformDateFormatter:(NSString *)formatterStr
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:formatterStr];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:[self doubleValue] / 1000];
    NSString *ok_time = [formatter stringFromDate:date];
    return ok_time;
}

- (NSString *)date_calculateDateWithInterval:(CGFloat)day
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    NSDateFormatter *formatterPre = [[NSDateFormatter alloc] init];
    [formatterPre setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *datePre = [formatterPre dateFromString:self];
    NSDate *date = [NSDate dateWithTimeInterval:day * 24 * 60 * 60 sinceDate:datePre];
    NSString *ok_time = [formatter stringFromDate:date];
    return ok_time;
}

+ (NSString *)gk_numberFormatterFormNumber:(NSNumber *)number prefix:(NSString *)prefix suffix:(NSString *)suffix
{
    NSNumberFormatter *numberFormatter = [NSNumberFormatter new];
    numberFormatter.numberStyle = NSNumberFormatterDecimalStyle;
    numberFormatter.positivePrefix = prefix;
    numberFormatter.positiveSuffix = suffix;
    return [numberFormatter stringFromNumber:number];
}


- (BOOL)positiveIntegerRegular
{
    NSString *pattern = @"^[1-9]\\d{0,8}$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:self];
    if (isMatch) {
        return YES;
    } else {
        return NO;
    }
}


- (BOOL)positiveRealNumberTwoDecimalsRegular
{
    NSString *pattern = @"^[0-9]+(.[0-9]{2})?$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:self];
    if (isMatch) {
        return YES;
    } else {
        return NO;
    }
}



@end
