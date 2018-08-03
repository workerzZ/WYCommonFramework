//
//  NSDate+Utils.h
//  todo
//
//  Created by zrh on 14-4-2.
//  Copyright (c) 2014年 com.benhe. All rights reserved.
//

/**
 Q=q
 g: Julian Day Number (number of days since 4713 BC January 1) 未知
 G: 公元时代，例如AD公元
 yy: 年的后2位
 yyyy: 完整年
 MM: 月，显示为1-12
 MMM: 月，显示为英文月份简写,如 Jan
 MMMM: 月，显示为英文月份全称，如 Janualy
 dd: 日，2位数表示，如02
 d: 日，1-2位显示，如 2
 D: 1~366 (年份的第几天,带0)
 e: 1~7 (一周的第几天, 带0)
 EEE: 简写星期几，如Sun
 EEEE: 全写星期几，如Sunday
 aa: 上下午，AM/PM
 A: 0~86399999 (一天的第A微秒)
 H: 时，24小时制，0-23
 h：时，12小时制，0-11
 m: 分，1-2位
 mm: 分，2位
 s: 秒，1-2位
 ss: 秒，2位
 S: 毫秒
 q/qq: 1~4 (0 padded Quarter) 第几季度
 qqq: Q1/Q2/Q3/Q4 季度简写
 qqqq: 1st quarter/2nd quarter/3rd quarter/4th quarter 季度全拼
 v~vvv: (General GMT Timezone Abbreviation) 常规GMT时区的编写
 vvvv: (General GMT Timezone Name) 常规GMT时区的名称
 w: 1~53 (0 padded Week of Year, 1st day of week = Sunday, NB: 1st week of year starts from the last Sunday of last year) 一年的第几周, 一周的开始为周日,第一周从去年的最后一个周日起算
 W: 1~5 (0 padded Week of Month, 1st day of week = Sunday) 一个月的第几周
 F: 1~5 (每月的第几周, 一周的第一天为周一)
*/
#import <Foundation/Foundation.h>

/**
 *  日期扩展（月份、星期、上午下午已经汉化）
 */
@interface NSDate (Utils)

- (BOOL)isThisYear;
- (BOOL)isToday;
- (BOOL)isSameDay:(NSDate*)date;
- (NSInteger)weekday;

#pragma mark - to NSString
- (NSString *)toReadableString;
- (NSString *)toReadableStringByDay;

- (NSString *)toStringToDate;
- (NSString *)toStringToTime;
- (NSString *)toStringToMinute;
- (NSString *)toStringToMs;
- (NSString *)toStringByAP;         // "上午","下午"
- (NSString *)toStringByWeekday;    // "星期一"
- (NSString *)toStringByMonth;      // "一月"
- (NSString *)toStringByPattern:(NSString *)pattern;

#pragma mark - NSDate
- (NSDate *)toDateTo0;
- (NSDate *)toDateTo24;
- (NSDate *)toDateNextDay;
+ (NSDate *)toTodayInTimeMs:(long long)times;
+ (NSDate *)toDayInTimeMs:(long long)times InDay:(NSDate *)date;
/*!
 @method
 @abstract 从ms数得到时间
 @param ms ms数
 */
+ (instancetype)dateWithTimeInMsSince1970:(long long int)ms;
- (long long int)timeInMsSince1970;

@end
