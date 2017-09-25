//
//  NSDictionary+RSJSONString.h
//  Util
//
//  Created by Rodrigo Soldi on 25/09/17.
//  Copyright © 2017 Rodrigo Soldi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (RSJSONString)

- (NSString *)jsonStringWithPrettyPrint: (BOOL)prettyPrint error: (NSError * __autoreleasing *)error;

@end
