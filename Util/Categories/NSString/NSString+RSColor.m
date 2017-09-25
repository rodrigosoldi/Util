//
//  NSString+RSColor.m
//  Util
//
//  Created by Rodrigo Soldi on 25/09/17.
//  Copyright © 2017 Rodrigo Soldi. All rights reserved.
//

#import "NSString+RSColor.h"

@implementation NSString (RSColor)

- (UIColor *)color {
    @try {
        unsigned rgbValue = 0;
        NSScanner *scanner = [NSScanner scannerWithString:self];
        if ([self rangeOfString:@"#"].location == 0) {
            [scanner setScanLocation:1];
        }
        [scanner scanHexInt:&rgbValue];
        return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
    } @catch (NSException *exception) {
        return [UIColor clearColor];
    }
}

@end
