//
//  NSString+Library.h
//  jinwan
//
//  Created by 王尧 on 2017/5/26.
//  Copyright © 2017年 wy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Library)

/**
 手机号置换

 @return 置换成 135****6781的形式
 */
- (NSString *)mobliePhoneNumberReplace;



/**
 判断字符串是否为空

 @param string 字符串
 @return YES/NO
 */
+ (BOOL)isBlankString:(NSString *)string;

/**
 清除小数点后面的0

 @return 去掉小数点后无用‘0’的字符串
 */
- (NSString *)clearOver0;

/**
 单位转换
 
 @return 返回 如果大于10000 ,则返回多少万,并去除小数点后无用的'0'
 */
- (NSString *)stringUnitConverter;

/**
 手机号验证
 
 @return 手机号正确返回@"" 字符串 错误返回message
 */

- (NSString *)mobilePredicateMatch;

/**
 邮箱验证
 
 @return 返回状态信息 email 合格 返回@"", 不合格返回错误你信息
 */
- (NSString *)emailPredicateMatch;

/**
 登录密码规则

 @return 8-16位,不能全数字
 */
- (NSString *)loginPassworldRegular;

    
/**
 交易密码规则

 @return 6-16位
 */
- (NSString *)transactionPasswordReguler;

/**
 设置富文本

 @param string 文本内容
 @param textSpace 文本行间距
 @param textAlignment 文本对齐方式
 @param textColor 文本color
 @param textFont 文本字体
 @return 富文本
 */
+ (NSMutableAttributedString *)setAttributedString:(NSString *)string textSpace:(NSInteger)textSpace textAlignment:(NSTextAlignment)textAlignment textColor:(UIColor *)textColor textFont:(UIFont *)textFont;

/**
 计算文本的 size

 @param font 字体
 @param maxW 最大宽度
 @return 返回 size
 */
- (CGSize)sizeWithFont:(UIFont *)font maxW:(CGFloat)maxW;

- (CGSize)sizeWithFont:(UIFont *)font;


 /**  根据判断条件设置UILabel上特殊字体的颜色与大小
 *
 *  @param string     需要设置的String
 *  @param condition     判断条件
 *  @param color     需改变特殊字体的颜色
 *  @param textFont     需改变特殊字体的
 *  @param underlineStyle     下划线样式
 */
+ (NSAttributedString *)SG_smallWithThisString:(NSString *)string condition:(NSArray *)condition color:(UIColor *)color textFont:(CGFloat)textFont underlineStyle:(NSUnderlineStyle)underlineStyle;

    
- (NSAttributedString *)modifyStringStyleCondition:(NSArray *)condition color:(UIColor *)color textFont:(CGFloat)textFont underlineStyle:(NSUnderlineStyle)underlineStyle;

- (NSAttributedString *)modifyStringDefaultStyleColor:(UIColor *)color textFont:(UIFont *)font;

/**
 *  时间格式的转换
 *
 *  @param format    显示的时间格式(yyyy-MM-dd HH:mm:ss)
 *  @param time      要转换的时间
 *
 *  @return NSString
 */
    
+ (NSString *)SG_dateConversionFormat:(NSString *)format time:(NSString *)time;
    

/**
 实例方法
调用的时候 直接是时间戳字符串 调用
 @param formatterStr 需要的时间字符串
 @return 返回一个转换的字符串
 */
- (NSString *)date_transformDateFormatter:(NSString *)formatterStr;


/**
 根据一个时间戳字符串 计算 day 天的日期

 @param day 时间期限
 @return 日期 yy-MM-dd
 */
- (NSString *)date_calculateDateWithInterval:(CGFloat)day;


/**
 处理数值类型格式，返回示例：1,234,567.837

 @param number 数值
 @param prefix 加前缀
 @param suffix 加后缀
 @return 字符串
 */
+ (NSString *)gk_numberFormatterFormNumber:(NSNumber *)number prefix:(NSString *)prefix suffix:(NSString *)suffix;


/**
 正整数0-9位正则判断

 @return 匹配结果
 */
- (BOOL)positiveIntegerRegular;


/**
 验证有两位小数的正实数

 @return 匹配结果
 */
- (BOOL)positiveRealNumberTwoDecimalsRegular;

@end
