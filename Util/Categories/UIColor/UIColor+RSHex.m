//
//  UIColor+RSHex.m
//  Util
//
//  Created by Rodrigo Soldi on 25/09/17.
//  Copyright © 2017 Rodrigo Soldi. All rights reserved.
//

#import "UIColor+RSHex.h"

@implementation UIColor (RSHex)

+ (UIColor *)colorFromHex:(NSString *)hexColor {
    @try {
        unsigned rgbValue = 0;
        NSScanner *scanner = [NSScanner scannerWithString:hexColor];
        if ([hexColor rangeOfString:@"#"].location == 0) {
            [scanner setScanLocation:1];
        }
        [scanner scanHexInt:&rgbValue];
        
        CGFloat red = ((rgbValue & 0xFF0000) >> 16)/255.0;
        CGFloat green = ((rgbValue & 0xFF00) >> 8)/255.0;
        CGFloat blue = (rgbValue & 0xFF)/255.0;
        
        return [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    } @catch (NSException *exception) {
        return [UIColor clearColor];
    }
}

@end
