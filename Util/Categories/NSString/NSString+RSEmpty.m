//
//  NSString+RSEmpty.m
//  Util
//
//  Created by Rodrigo Soldi on 25/09/17.
//  Copyright © 2017 Rodrigo Soldi. All rights reserved.
//

#import "NSString+RSEmpty.h"

@implementation NSString (RSEmpty)

- (BOOL)isEmpty {
    return [self length] == 0;
}

@end
