//
//  NSDictionary+RSJSONString.m
//  Util
//
//  Created by Rodrigo Soldi on 25/09/17.
//  Copyright © 2017 Rodrigo Soldi. All rights reserved.
//

#import "NSDictionary+RSJSONString.h"

@implementation NSDictionary (RSJSONString)

- (NSString *)jsonStringWithPrettyPrint:(BOOL)prettyPrint error:(NSError *__autoreleasing *)error {
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:(NSJSONWritingOptions)(prettyPrint ? NSJSONWritingPrettyPrinted : 0)
                                                         error:error ?: nil];
    
    if (!jsonData) {
        return @"{}";
    } else {
        return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
}

@end
