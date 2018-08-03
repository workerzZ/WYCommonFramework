//
//  NSDate+Utils.m
//  todo
//
//  Created by zrh on 14-4-2.
//  Copyright (c) 2014年 com.benhe. All rights reserved.
//

#import "NSDate+Utils.h"

@implementation NSDate (Utils)

 

- (BOOL)isThisYear{
    if([[self toStringByPattern:@"yyyy"] isEqualToString:[[NSDate date] toStringByPattern:@"yyyy"]]){
        return YES;
    }
    return NO;
}
- (BOOL)isToday{
    if([self isSameDay:[NSDate date]])
        return YES;
    return NO;
}

- (BOOL)isYesterday{
    NSDate* yestoday = [NSDate dateWithTimeIntervalSinceNow:-24*3600];
    if([self isSameDay:yestoday])
        return YES;
    return NO;
}

- (BOOL)isTheDayBeforeYesterday{
    NSDate* dayBeforeYestoday = [NSDate dateWithTimeIntervalSinceNow:-48*3600];
    if([self isSameDay:dayBeforeYestoday])
        return YES;
    return NO;
}
- (BOOL)isSameDay:(NSDate*)date{
    if([[self toStringToDate] isEqualToString:[date toStringToDate]]){
        return YES;
    }
    return NO;
}
- (NSInteger)weekday{
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *comps =[calendar components:(NSCalendarUnitWeekOfMonth | NSCalendarUnitWeekday | NSCalendarUnitWeekdayOrdinal) fromDate:self];
    NSInteger weekday = [comps weekday]; // 星期几（注意，周日是“1”，周一是“2”。。。。）
    return weekday;
}

#pragma mark - to NSString
- (NSString *)toReadableString{
    NSString *strDay = [self toReadableStringByDay];
    return [strDay stringByAppendingString: [self toStringToTime]];
}

- (NSString*)toReadableStringByDay{
    NSDate* today = [NSDate date];
    if([self isSameDay:today]){
        return @"今天";
    }
    NSDate* yestoday = [NSDate dateWithTimeIntervalSinceNow:-24*3600];
    if([self isSameDay:yestoday]){
        return @"昨天";
    }
    NSDate* dayBeforeYestoday = [NSDate dateWithTimeIntervalSinceNow:-48*3600];
    if([self isSameDay:dayBeforeYestoday]){
        return @"前天";
    }
    return [self toStringToDate];
}

- (NSString*)toStringToDate{
    return [self toStringByPattern:@"yyyy-MM-dd"];
}
- (NSString*)toStringToTime{
    return [self toStringByPattern:@"HH:mm"];
}
- (NSString *)toStringToMinute{
    return [self toStringByPattern:@"yyyy-MM-dd HH:mm"];
}
- (NSString *)toStringToMs{
    return [self toStringByPattern:@"yyyy-MM-dd HH:mm:ss.SSS"];
}
- (NSString *)toStringByAP{         // "上午","下午"
    return [self toStringByPattern:@"aa"];
}
- (NSString*)toStringByWeekday{
    return  [self toStringByPattern:@"eeee"];
}
- (NSString *)toStringByMonth{      // "一月"
    return  [self toStringByPattern:@"MMMM"];
}
- (NSString *)toStringByPattern:(NSString *)pattern{
    NSCalendar* cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSLocale * locale = [NSLocale systemLocale];
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setCalendar:cal];
    [dateFormatter setLocale:locale];
    [dateFormatter setDateFormat:pattern];
    dateFormatter.AMSymbol = @"上午";
    dateFormatter.PMSymbol = @"下午";
    dateFormatter.weekdaySymbols = @[@"周日", @"周一", @"周二", @"周三", @"周四", @"周五", @"周六"];
    dateFormatter.shortWeekdaySymbols = @[@"星期日", @"星期一", @"星期二", @"星期三", @"星期四", @"星期五", @"星期六"];
    dateFormatter.monthSymbols = @[@"一月", @"二月", @"三月", @"四月", @"五月", @"六月", @"七月", @"八月", @"九月", @"十月", @"十一月", @"十二月"];
    dateFormatter.shortMonthSymbols = @[@"一月", @"二月", @"三月", @"四月", @"五月", @"六月", @"七月", @"八月", @"九月", @"十月", @"十一月", @"十二月"];
    return [dateFormatter stringFromDate:self];
}

#pragma mark - NSDate
- (NSDate *)toDateTo0{
    return [self toDateByPattern:@"yyyy-MM-dd" from:[self toStringToDate]];
}

- (NSDate *)toDateTo24{
    NSDate *date = [self toDateByPattern:@"yyyy-MM-dd" from:[self toStringToDate]];
    return [NSDate dateWithTimeInterval:86400 sinceDate:date];
}
- (NSDate*)toDateNextDay{
    NSTimeInterval time = [self timeIntervalSince1970];
    time +=86400;
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
    return date;
}
+ (NSDate*)toTodayInTimeMs:(long long)times{
    return [self toDayInTimeMs:times InDay:[NSDate date]];
}
+ (NSDate*)toDayInTimeMs:(long long)times InDay:(NSDate*)date{
    NSCalendar* calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSUInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond | NSCalendarUnitWeekOfMonth | NSCalendarUnitWeekday | NSCalendarUnitWeekOfMonth | NSCalendarUnitWeekOfYear;
    NSDateComponents *dateComponents = [calendar components:unitFlags fromDate:date];
    NSDate *date0 = [NSDate dateWithTimeInMsSince1970:times];
    NSDateComponents *dateComponents0 = [calendar components:unitFlags fromDate:date0];
    dateComponents.hour = dateComponents0.hour;
    dateComponents.minute = dateComponents0.minute;
    dateComponents.second = 0;
    return [calendar dateFromComponents:dateComponents];
}
- (NSDate *)toDateByPattern:(NSString *)pattern from:(NSString*)dateStr{
    NSCalendar* cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSLocale * locale = [NSLocale systemLocale];
    NSDateFormatter * df = [[NSDateFormatter alloc] init];
    [df setCalendar:cal];
    [df setLocale:locale];
    [df setDateFormat:pattern];
    return [df dateFromString:dateStr];
}

+ (instancetype)dateWithTimeInMsSince1970:(long long)ms{
    return [NSDate dateWithTimeIntervalSince1970:ms*1.0/1000];
}

- (long long)timeInMsSince1970{
    NSTimeInterval a = [self timeIntervalSince1970];
    long long int ret = 0;
    ret = (ret+a)*1000;
    return ret;
}

@end
