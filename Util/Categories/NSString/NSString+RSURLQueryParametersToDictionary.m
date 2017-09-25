//
//  NSString+RSURLQueryParametersToDictionary.m
//  Util
//
//  Created by Rodrigo Soldi on 25/09/17.
//  Copyright © 2017 Rodrigo Soldi. All rights reserved.
//

#import "NSString+RSURLQueryParametersToDictionary.h"

@implementation NSString (RSURLQueryParametersToDictionary)

- (NSDictionary *)dictionaryFromUrlQueryParametersComponenentsSeparedByString: (NSString *)componentsSeparatedByString stringsBySplittingOnString: (NSString *)stringsBySplittingOnString {
    NSArray * encodedStringArray = [self componentsSeparatedByString:componentsSeparatedByString];
    
    NSArray *decodedStringArray = [self undecodeStringArray:encodedStringArray];
    
    NSMutableDictionary *responseDictionary = [NSMutableDictionary dictionaryWithCapacity:decodedStringArray.count];
    
    for (NSString *keyValuePair in decodedStringArray) {
        
        NSArray *pairComponents = [keyValuePair stringsBySplittingOnString:stringsBySplittingOnString];
        
        if (pairComponents && [pairComponents respondsToSelector:@selector(firstObject)]) {
            NSString *key = [pairComponents firstObject];
            NSString *value = [pairComponents lastObject];
            
            if (value && key) {
                [responseDictionary setObject:value forKey:key];
            }
        }
        
    }
    
    return responseDictionary;
}

- (NSDictionary *)dictionaryFromUrlQueryParameters {
    return [self dictionaryFromUrlQueryParametersComponenentsSeparedByString:@"&" stringsBySplittingOnString:@"="];
}

- (NSArray *)undecodeStringArray:(NSArray *)encodedStringArray {
    
    NSMutableArray *decodedStringArray = [NSMutableArray arrayWithCapacity:encodedStringArray.count];
    
    for (NSString *encodedString in encodedStringArray) {
        
        NSString *unencodedUrlString = [encodedString stringByRemovingPercentEncoding];
        
        if (unencodedUrlString) {
            [decodedStringArray addObject:unencodedUrlString];
        }
    }
    
    return decodedStringArray;
}

- (NSArray *)stringsBySplittingOnString:(NSString *)splitString {
    NSRange range = [self rangeOfString:splitString];
    if (range.location == NSNotFound) {
        return nil;
    } else {
        NSString *string1 = [self substringToIndex: range.location];
        NSString *string2 = [self substringFromIndex: range.location + range.length];
        
        if (!string1) {
            string1 = @"";
        }
        
        if (!string2) {
            string2 = @"";
        }
        
        return @[string1, string2];
    }
}

@end
