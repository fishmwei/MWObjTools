//
//  MWDateTools.h
//  Pods
//
//  Created by huangmingwei on 16/7/4.
//
//

#import <Foundation/Foundation.h>

FOUNDATION_EXTERN NSString * const MWDateFmtWithZone; //yyyy-MM-dd'T'HH:mm:ss.SSSZ

@interface MWDateTools : NSObject

+ (NSDate *)dateFromString:(NSString *)dateStr format:(NSString *)format;
+ (NSString *)stringFromDate:(NSDate *)date toFormat:(NSString *)format;

@end
