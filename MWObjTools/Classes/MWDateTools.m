//
//  MWDateTools.m
//  Pods
//
//  Created by huangmingwei on 16/7/4.
//
//

#import "MWDateTools.h"

NSString * const MWDateFmtWithZone = @"yyyy-MM-dd'T'HH:mm:ss.SSSZ";

@implementation MWDateTools

static NSDateFormatter *datefmt;

+ (void)initialize {
    static dispatch_once_t p;
    dispatch_once(&p, ^{
        datefmt = [[NSDateFormatter alloc] init];
        datefmt.locale = [NSLocale currentLocale];
    });
}

/**
 *  trans formated Date String to NSDate
 *
 *  @param dateStr <#dateStr description#>
 *  @param format  <#format description#>
 *
 *  @return <#return value description#>
 */

+ (NSDate *)dateFromString:(NSString *)dateStr format:(NSString *)format {
    datefmt.dateFormat = format;
    
    return [datefmt dateFromString:dateStr];
}

+ (NSString *)stringFromDate:(NSDate *)date toFormat:(NSString *)format {
    datefmt.dateFormat = format;
    NSString *ret = [datefmt stringFromDate:date];
    
    if (ret.length == 0) {
        ret = @"";
    }
    
    return ret;
}

@end
