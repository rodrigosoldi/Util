//
//  NSString+RSCharacter.m
//  Util
//
//  Created by Rodrigo Soldi on 25/09/17.
//  Copyright © 2017 Rodrigo Soldi. All rights reserved.
//

#import "NSString+RSCharacter.h"

@implementation NSString (RSCharacter)

- (NSString *)firstCharacter {
    return [self substringFromIndex:1];
}

- (NSString *)lastCharacter {
    return [self substringFromIndex:[self length] - 1];
}

@end
