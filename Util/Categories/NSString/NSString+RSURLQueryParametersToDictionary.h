//
//  NSString+RSURLQueryParametersToDictionary.h
//  Util
//
//  Created by Rodrigo Soldi on 25/09/17.
//  Copyright © 2017 Rodrigo Soldi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (RSURLQueryParametersToDictionary)

- (NSDictionary *)dictionaryFromUrlQueryParameters;
- (NSDictionary *)dictionaryFromUrlQueryParametersComponenentsSeparedByString: (NSString *)componentsSeparatedByString stringsBySplittingOnString: (NSString *)stringsBySplittingOnString;

@end
